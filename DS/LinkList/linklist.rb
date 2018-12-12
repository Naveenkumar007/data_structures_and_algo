class Node
	attr_accessor :value, :next_node
	def initialize(value, next_node=nil)
		@value = value
    @next = next_node
  end
end	

class Linklist
	def initialize(value)
    @head = Node.new(value)
  end
  def add(value)
  	current = @head
  	while(!current.next_node.nil?)
  		current = current.next_node
  	end	
  	current.next_node = Node.new(value)
  end	
  def display
  	current = @head
  	while(!current.nil?)
  		puts current.value
  		current = current.next_node
  	end	
  end	

end

ll = Linklist.new(8)
ll.add(10)
ll.add(20)

ll.display()