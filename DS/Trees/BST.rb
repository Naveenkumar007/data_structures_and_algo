class Node
  attr_accessor :data, :left ,:right
  def initialize(data=nil,left=nil,right=nil)
		@data = data
    @left = left
    @right = right
  end
end	



class BST
	def initialize(value = nil)
		@root = (Node.new(value) if value) || nil
	end	

	def insert(value)
		if !@root
			@root = Node.new(value)
			return
		end

		current = @root
		while current
			if (current.data > value) && (current.left == nil)
				current.left = Node.new(value)
			elsif (current.data < value) && (current.right == nil)
				current.right = Node.new(value)
			elsif  (current.data > value)
				current = current.left
			elsif (current.data < value)
				current = current.right
			else
			  return	
			end
		end
	end	
	def PreOrderTraversal(node = @root)
     return if node == nil
     puts node.data.to_s
     PreOrderTraversal(node.left)
     PreOrderTraversal(node.right)
	end	
	def InOrderTraversal(node = @root)
		return if node == nil
    PreOrderTraversal(node.left)
    puts node.data.to_s
    PreOrderTraversal(node.right)
	end	
	def PostOrderTraversal(node = @root)
		return if node == nil
    PreOrderTraversal(node.left)
    PreOrderTraversal(node.right)
    puts node.data.to_s
	end

	
	def delete(value)
    node,parent_node = search(value,@root,nil)
    if node
    	temp1 = delete_node(node)
    	PreOrderTraversal(temp1);
    	if parent_node.left == node
    		parent_node.left = temp1
    	else
    		parent_node.right = temp1
    	end	
    end	
	end

	def search(value,node=@root,parent_node)

		return nil if node.nil? 
	  if value == node.data
	  	return node,parent_node
	  elsif value > node.data
	  	parent_node = node
	  	search(value,node.right,parent_node)
	  elsif value < node.data
	  	parent_node = node
	  	search(value,node.left,parent_node)
	  end	
	end

	def find_min_node(node)
		if node.left.nil? && node.right.nil?
			return node
		elsif node.left.nil?
			min_node = node.right
			return min_node
		else
			find_min_node(node.left)
		end	
	end	

	def delete_node(node)
	  if node.left.nil? && node.right.nil?
	  	node = nil
	  elsif !node.left.nil? && node.right.nil?
	  	node = node.left
	  elsif node.left.nil? && !node.right.nil?
	    node = node.right
	  else
	  	min_node = find_min_node(node.right)
	   	node.data  = min_node.data
	   	# min_node = nil
	    delete_node(min_node)
	  end
	  node
	end	
	def is_bst(node=@root,min=(-1/0.0),max= (1 / 0.0))
		if  !node
			 return true 	
		end	
	 if (min > node.data) || (max < node.data)
	    return false
	 end
   return  is_bst(node.left,min,node.data) && is_bst(node.right,node.data,max)
	end	
end	

arr = [10,5,40,1,7,50]

bst = BST.new

def insert_ele(arr,bst)
	arr.each do |value|
		bst.insert(value)
	end	
end	

insert_ele(arr,bst)
# bst.PreOrderTraversal();
# puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
# bst.InOrderTraversal();
# puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
# bst.PostOrderTraversal();
# puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
# node = bst.search(40)
bst.delete(5)

# puts bst.is_bst()

# puts node.data
# bst.PreOrderTraversal()