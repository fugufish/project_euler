require '../lib/sieve'
# class Integer
#   
#   def prime?
#     return true if self == 2
#     return false if (self & 1) == 0
#     square = Math.sqrt(self).round + 1
#     i = 1
#     while i <= square
#       i+= 2
#       return false if (self % i) == 0
#     end
#     true
#   end
#   
# end

# numbers = (2..2000000)
# 
# numbers = numbers.select { |n| n.prime? }
puts 2000000.primes.inject { |result, prime| result + prime }