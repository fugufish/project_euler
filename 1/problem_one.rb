numbers = (1..999).to_a
numbers.delete_if { |n| n % 3 == 0 || n % 5 == 0 }
puts numbers.inject { |result,number| result + number }