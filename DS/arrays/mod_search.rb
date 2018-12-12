#find firts element in array if each next element modular is 1
arr = [1,2,1,2,3,4,3,4,5,6,7]
def findElement(arr,ele)
	len = arr.length
	i = 0
	while(i<len)
		if arr[i] == ele
			return i
		else
		  i = i + (arr[i] - ele).abs	
		end	
	end	
	return -1
end	

puts findElement(arr,7)