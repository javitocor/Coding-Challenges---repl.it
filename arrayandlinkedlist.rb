class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
  end
end

class LinkedList
  def initialize
      @head = nil
    end

  def add(number)
    if @head.nil?
      @head = Node.new(number)
    else
      node = @head
      while node.next_node != nil
        node = node.next_node
      end
      node.next_node = Node.new(number)
    end
  end

  def get(index)
    node = @head
    index.times do
      node = node.next_node
    end
    return node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5
  