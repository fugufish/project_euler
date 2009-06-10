# Add all the natural numbers below one thousand that are multiples of 3 or 5.
result = 0
(1..999).each do |n|
  if ((n % 3) == 0) || ((n % 5) == 0)
    result += n
  end 
end
puts result