require 'primed'

class Integer; include Primed; end

numbers = (2..2000000).to_a
final = 0
last_num_length = 0

numbers = numbers.select { |n| n.prime? }
puts numbers.inject { |result, element| result = element + result }

# Oddly, this code runs at an almost identical speed as the pure ruby code using the c
# extension. The above code runs in only a fraction of the time as the code below. However
# if the above code is run in pure ruby, the opposite effect is seen, where it takes longer
# than 3 minutes than the code below.
#
# numbers.each do |n|
#   not_primes = []
#   if n.prime?
#     numbers.each { |x| not_primes << (n * x);}
#     numbers = numbers - not_primes
#     if numbers.length == last_num_length
#       puts numbers.inject { |result, element| result = element + result }
#       break
#     end
#     last_num_length = numbers.length
#   end
# end