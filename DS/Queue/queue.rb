class Queue
	def initialize
    @store = Array.new
  end
  def dequeue
  	ele = @store.pop
  end	
  def enqueue(ele)
  	@store.unshift(ele)
  end
  def size
  	@store.size
  end	
end	

obj = Queue.new
obj.enqueue(2)
obj.enqueue(4)
obj.enqueue(3)
obj.enqueue(5)
obj.enqueue(7)
obj.enqueue(3)

puts obj.dequeue

puts obj.size

