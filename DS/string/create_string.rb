str = "2(aa)3(abc)a"
@result = ""
def add_extra_char(str1,no_of_times)
	i = 0
	while i < no_of_times do 
		@result = @result + str1
		i = i + 1
	end	
end	

class Object
  def is_number?
    to_f.to_s == to_s || to_i.to_s == to_s
  end
end

def create_string(str)
	start_index = nil
	end_index = nil
	str1 = ""
	hashTable = {}
	times = 1
	str.each_char.with_index do |char,index|
		if  str[index-1] == "(" && str[index-2].is_number?
			start_index = index
            times = str[index-2].to_i
		end	
		if start_index && (char == ")")
			end_index = index-1
			sub_str = str[start_index..end_index]
			hashTable[start_index] = {:times => times, :sub => sub_str,:end_index => end_index + 1}
			start_index = nil 
			times = 1
		end	
	end	
	i = 0
	str_len = str.length
	while i < str_len do 
		if  hashTable[i+2]
			add_extra_char(hashTable[i+2][:sub],hashTable[i+2][:times])
			i = hashTable[i+2][:end_index]
		else
			@result = @result + str[i]
		end	
		i = i + 1
	end	
	puts @result
end	

create_string(str);