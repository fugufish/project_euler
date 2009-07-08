class Fixnum
  
  def prime?
    return true unless ('1' * self) =~ /^1$|^(11+?)\1+$/
    false
  end
  
end


numbers = (2..2000000).to_a
final = 0
last_num_length = 0

numbers.each do |n|
  not_primes = []
  if n.prime?
    numbers.each { |x| not_primes << (n * x);}
    numbers = numbers - not_primes
    if numbers.length == last_num_length
      puts numbers.inject { |result, element| result = element + result }
      break
    end
    last_num_length = numbers.length
  end
end