class Node
	attr_accessor :value, :next
	def initialize(value)
		@value = value
    	@next = nil
    end
end	

# arr = [3,4,3,2,6,1,2,6]
arr = [3,4]


module LLMethod
	def create(arr)
    current = @head
  	arr.each do | value |
       if @head && current
       	current.next = Node.new(value)
        current = current.next 
       else 
        @head = Node.new(value)
       	current = @head	  
       end	
  	end	
  end
  def display
  	current = @head
  	while(!current.nil?)
  		puts current.value
  		current = current.next
  	end	
  end 
end

module RRLinklist
	def remove_redund_values
    current = @head 
    hashTable = {}
    prev_node = current
    while current
    	if hashTable[current.value]
        temp_node = current
        current = prev_node
    		current.next = temp_node.next
    	else
    		hashTable[current.value] = true
    	end
    	prev_node = current	
      current = current.next;
    end	
  end
end

class Linklist
	include LLMethod
	include RRLinklist

	def initialize()
    @head = nil
  end
   
end

ll = Linklist.new
ll.create(arr)
ll.display()
puts "##@@@@@@@@@@@@@@@@@@@@@@@@@@"
ll.remove_redund_values();
ll.display()

