# Count words that have at least 3 continuous vowels

str = 'Best known and most paeipelir on wireless (cellular) wide area networks, text messaging (sometimes called texting or wireless messaging) has numerous'

def countWord(str)
	count = 0
	pattern = /[aeiou]{3,}/
	str.split(' ').each do |value|
		if pattern.match(value) != nil
			count += 1
		end	
	end	
	return count
end	

puts countWord(str)