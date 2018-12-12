#You are given an array and some number S. Determine if any two numbers within the array sum to S.
arr = [1,5,6,3,2,7,9]
def twosum(arr,sum)
   hashTable = {}
   arr.each_with_index do |value,index|
    subs_value = sum - arr[index]
    if hashTable.key?(subs_value)
    	puts "Num1:::#{arr[index]}@@@@@@@@@@Num2:::#{subs_value}"
    	return 
    end	
    hashTable[arr[index]] = true
   end
   return -1
end	
twosum(arr,5)