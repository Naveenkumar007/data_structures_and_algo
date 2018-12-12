class Stack
	def initialize
    @store = Array.new
  end
  def pop
  	ele = @store.pop
  	puts ele
  end	
  def push(ele)
  	@store.push(ele)
  end
  def size
  	@store.size
  end	
end	

obj = Stack.new
obj.push(2)
obj.push(4)
obj.push(3)
obj.push(5)
obj.push(7)
obj.push(3)

puts obj.pop

puts obj.size

