require 'primed'
class Fixnum; include Primed; end


numbers = (2..2000000).to_a
final = 0
last_num_length = 0

numbers = numbers.select { |n| n.prime? }
puts numbers.inject { |result, element| result = element + result }

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