class Node
  attr_accessor :number, :next_node
  
  def initialize(number, next_node = nil)
	  @number = number
    @next_node = next_node
  end
end


class Stack
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(number)
    @head = Node.new(number, @head)
    @min = @head if @min.nil?
    @min = Node.new(number, @min) if number < self.min 
  end
  
  def pop
    @min = @min.next_node if @min.number == @head.number
    removed_node = @head
    @head = @head.next_node
    removed_node.number
  end
 
  def min
    @min.number unless @min.nil?
  end

  def empty?
    @head.nil?
  end 

end
