# frozen_string_literal: true

class Node
  attr_accessor :number, :next_node

  def initialize(number, next_node = nil)
    @number = number
    @next_node = next_node
  end
end

class Stack
  def initilize
    @head = nil
    @tail = nil
  end

  def push(number)
    # your code here
    new_node = Node.new(number, @head)
    @head = new_node
  end

  def pop
    # your code here
    raise 'Stack is empty' if is_empty?

    number = @head.number
    @head = @head.next_node
    number
  end

  def is_empty?
    @head.nil?
  end
end
