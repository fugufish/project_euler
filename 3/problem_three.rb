# What is the largest prime factor of the number 600851475143 ?

class Fixnum
  
  def prime?
    return true unless ('1' * self) =~ /^1$|^(11+?)\1+$/
    false
  end
  
end

require 'benchmark'

puts Benchmark.measure {
  
  Math.sqrt(600851475143).ceil.downto(2) do |i|
    if 600851475143 % i == 0 && i.prime?
      puts i
      break
    end
  end
  
}