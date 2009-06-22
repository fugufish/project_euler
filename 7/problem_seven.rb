# What is the 10001^(st) prime number?

require 'mathn'

p = Prime.new
a = nil
10001.times { a = p.next }

puts a