num = 9
def isPrime(num)
	return true if num < 2
	(2..Math.sqrt(num).round).each do |value|
		return false if num % value == 0
	end	
	return true
end	

is_prime = isPrime(num)

puts is_prime