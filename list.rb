# This is initialize a node
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# This is to initilize a linked list
class LinkedList
  # setup head and tail
  def initilize
    @head = nil
    @tail = nil
  end

  def add(number)
    # create a new node
    this_node = Node.new(number)
    if @head.nil?
      @head = this_node
      return
    end
    current = @head
    current = current.next_node until current.next_node.nil?
    current.next_node = this_node
  end

  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end
end
