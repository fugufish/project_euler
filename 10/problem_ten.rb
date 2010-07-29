require '../lib/sieve'

x = 0
a = 2000000.primes
a.each{ |i| x+= i }
puts x