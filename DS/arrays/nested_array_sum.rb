arr = [1, 1, 1, [3, 4, [8]], [7]]
def nestedSum(arr)
	sum = 0
	arr.each do |value|
	   if !value.instance_of? Integer
	   	 sum += nestedSum(value)
	   else
	   	sum += value
	   end
	end	
	return sum
end	
value = nestedSum(arr)
puts value