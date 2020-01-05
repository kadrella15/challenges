class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil 
  end

  # Push a value onto the stack
  def push(value)
    #IMPLEMENT ME!
    data = LinkedListNode.new(value, @data)
    @data = data
  end
  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    # I RETURN A VALUE
    if @data.nil?
      return print "nil\n"
    end
    data_value = @data.value
    @data = @data.next_node
    return data_value
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
  # ADD CODE HERE
  stack = Stack.new
  while list
    # ADD CODE HERE
    stack.push(list.value)
    list = list.next_node
  end

  return stack.data
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts "Original list"
print_values(node3)

puts "Reversed List"
revlist = reverse_list(node3)
print_values(revlist)

# Solution:
#Original list
#12 --> 99 --> 37 --> nil
#Reversed List
#37 --> 99 --> 12 --> nil
