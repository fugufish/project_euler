# Find the largest palindrome made from the product of two 3-digit numbers.

max = 999 * 999
brk = 0
ret = ''
max.downto(1) do |i|
  if i.to_s.reverse == i.to_s
    999.downto(100) do |j|
      if i % j == 0
        k = i / j
        if k.to_s.length == 3
          ret = i
          brk = 1
        end
      end
    end
  end
  break if brk == 1
end
puts ret