result = 0
(1..999).each do |n|
  if ((n % 3) == 0) || ((n % 5) == 0)
    result += n
    puts n
  end 
end
puts result