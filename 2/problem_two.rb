result = 0; curr = 0; succ = 1;
while curr < 4000000
  curr, succ = succ, succ + curr
  if (curr % 2) == 0
    result += curr 
  end
end
puts result