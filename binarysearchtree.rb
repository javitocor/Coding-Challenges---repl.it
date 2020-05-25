class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
  end
  
  class BST
    def insert new_node
      if @root.nil?
        @root = new_node
        return
      end
      
      current = @root
      until current.nil?
        if new_node.data < current.data
          if current.left.nil?
            current.left = new_node
            return
          end
          current = current.left
        elsif new_node.data > current.data
          if current.right.nil?
            current.right = new_node
            return
          end
          current = current.right
        end
      end
    end
  
  
    
  
    def pre_order(node = @root)
        if node == nil
            return ''
        end
        
        result = "#{node.data} "
        result += pre_order(node.left)
        result += pre_order(node.right)
    end
  end
  
  
  def binary_search_tree(array)
    tree = BST.new
    array.each { |e| tree.insert(Node.new(e)) }
    tree.pre_order
  end
  
  puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
  # => "8 3 1 6 4 7 10 14 13"