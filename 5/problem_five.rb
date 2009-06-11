# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

require 'mathn'

puts (1..20).inject { |result, n| result.lcm n }
