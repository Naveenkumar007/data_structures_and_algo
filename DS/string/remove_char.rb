 #You are given an array of characters and a string S. Write a function to return the string S with all the characters from the array removed.
arr = ['h', 'e', 'w', 'o']
str = "hello world"
def removeChars(arr,str)
	result = ''
	hashTable = {}
	arr.each {|c| hashTable[c] = true}
	str.split('').each do |char|
		if !hashTable.key?(char)
			result += char
		end 
	end	
	return result
end 

puts removeChars(arr,str)