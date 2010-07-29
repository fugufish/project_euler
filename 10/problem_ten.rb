class Integer
  
  def prime?
    return true if self == 2
    return false if (self & 1) == 0
    square = Math.sqrt(self).round + 1
    i = 1
    while i <= square
      i+= 2
      return false if (self % i) == 0
    end
    true
  end
  
end

numbers = (2..2000000).to_a.recject! { |n| n % 2 == 0 }

numbers = numbers.select { |n| n.prime? }
puts numbers.inject { |result, element| result = element + result }