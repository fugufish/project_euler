# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

puts (((1..100).inject { |result, i| result + i })**2) - ((1..100).inject { |result, i| result + (i**2)})