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
    
    def add_at(index, item)
      if index == 0
        @head = Node.new(item, @head)
      else
        nodeprev = get_node(index-1)
        node = Node.new(item, nodeprev.next_node)
        nodeprev.next_node = node
      end
    end
    
    def remove(index)
      if @head.nil?
        puts "error"
      elsif index == 0
        node = @head
        new_head = node.next_node
        @head = new_head
      else
        node = get_node(index - 1)
        node.next_node = get_node(index + 1)
      end
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
    
    private
    
    def get_node(index)
      node = @head
      index.times do
        node = node.next_node
      end
      return node
    end
  end
  
class Queue
  def initialize
    @head = nil
    @tail = nil
  end
  def add(number)
    if @head.nil?
      @head = Node.new(number, @head)
      @tail = @head
    else
      node = @head
        while node.next_node != nil
          node = node.next_node
        end
      node.next_node = Node.new(number)
      @tail = node
    end
  end
  
  def remove
    if @head.nil?
      return -1
    else
      value = @head.value
      @head = @head.next_node
    end
    value
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1