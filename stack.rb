class Node
  attr_accessor :value, :prev

  def initialize(value = nil, prev = nil)
    @value = value
    @prev = prev
  end
end

class Stack
  def initialize
    @top = nil
    @size = 0
  end

  def push(item)
    new_node = Node.new(item, prev = @top)
    @top = new_node
    @size += 1
  end

  def pop
    raise "Стек порожній" if empty?

    popped_item = @top.value
    @top = @top.prev
    @size -= 1

    popped_item
  end

  def peek
    raise "Стек порожній" if empty?
    @top.value
  end

  def empty?
    @top.nil?
  end

  def size
    @size
  end

  def to_s
    current_node = @top
    result = []
    while current_node
      result << current_node.value
      current_node = current_node.prev
    end
    "[#{result.reverse.join(', ')}]"
    end
end

stack = Stack.new

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(666)
puts stack.to_s

puts "Stack size: #{stack.size}"  # Stack size: 4
puts "Top element: #{stack.peek}" # Top element: 666
puts "Popped element: #{stack.pop}" # Popped element: 666
puts stack.to_s
puts "Is the stack empty? #{stack.empty?}" # Is the stack empty? false

puts "Top element: #{stack.peek}" # Top element: 3

stack.push(4)
puts stack.to_s