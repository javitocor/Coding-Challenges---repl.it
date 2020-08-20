class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
	return nil if index >= array.length || array[index] == 0
  
    node = Node.new(array[index])
    node.left = array_to_tree(array, 2*index+1)
    node.right = array_to_tree(array, 2*index+2)
  
    node
end

def search_tree? (tree)
  root = array_to_tree(tree)
  search_helper(root)
end

def search_helper (node, min = nil, max = nil)
  return true if node.nil?
  return false if min && node.data < min
  return false if max && node.data > max
  search_helper(node.left, min, node.data) && search_helper(node.right, node.data, max)
end


puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false