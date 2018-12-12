#you are given a string and you should return the first character that is unique in the entire string. 
str = "learnystl"
def firstChar(str)
   hashTable = Hash.new
   str.split('').each do |char|
   	if !hashTable.key?(char)
   		hashTable[char] = 1
   	else
   		hashTable[char] += 1
   	end	
   end
   str.split('').each do |char|
   	if hashTable[char] == 1
   		return char
   	end	
   end
  return -1
end	

puts firstChar(str)