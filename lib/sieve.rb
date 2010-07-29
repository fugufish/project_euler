require 'rubygems'
require 'ruby-debug'
module Sieve
  
  def prime?
    return true if self == 2
    return false if (self & 1 == 0) || (self % 2 == 0)
    numbers = (2..Math.sqrt(self)).to_a
    numbers.each do |number|
      products = numbers.collect { |n| n * number }
      numbers = numbers - products
    end
    return numbers.select { |n| (self % n) == 0 }.empty?
  end
  
  def primes
    sieve = [2]
    3.step(self,2) { |i| sieve[i] = i }
    sieve[self] = self unless self % 2 == 0
    (2..Math.sqrt(self)).each  do |i|
      next unless sieve[i]
      (i*i).step(self, i) do |j|
        sieve[j] = nil
      end
    end
    sieve.compact
  end
  
end

class Fixnum; include Sieve; end