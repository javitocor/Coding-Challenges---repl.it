class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end
class Stack

   def initialize
    @head = nil
  end
  def push(number)
    if @head.nil?
      @head = Node.new(number, @head)
    else
      new_head = Node.new(number, @head)
      @head = new_head
    end
  end
  
  def pop
    if @head.nil?
      puts "error, is empty"
    else
      value = @head.value
      @head = @head.next_node
    end
    value
  end
  
  def min
    if @head.nil?
      puts "error, is empty"
      minimum = 0
    else
      minimum = @head.value
      node = @head
      while node.next_node != nil
        node = node.next_node
        minimum = node.value if node.value < minimum
      end
    end
    minimum
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3