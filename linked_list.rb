# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initilize
    @head = nil
    @tail = nil
  end

  def add(number)
    this_node = Node.new(number)
    if @head.nil?
      @head = this_node
      return
    end
    current = @head
    current = current.next_node until current.next_node.nil?
    current.next_node = this_node
  end

  def add_at(index, item)
    if @head.nil?
      present_node = Node.new(item)
      @head = present_node
    end
    if index.zero?
      present_node = Node.new(item, @head)
      @head = present_node
    end
    if index.positive?
      before_index = index - 1
      current = @head
      before_current = @head

      before_index.times do
        before_current = current.next_node
      end
      index.times do
        current = current.next_node
      end
      present_node = Node.new(item)
      after_current = before_current.next_node
      before_current.next_node = present_node
      present_node.next_node = after_current
    end
  end

  def remove(index)
    puts 'the storage is empty' if @head.nil?
    if index.zero?
      current = @head
      current.next = new_current
      @head = new_current
    end
    if index.positive?
      current = get_node(index)
      before_current = get_node(index - 1)
      after_current = current.next_node
      before_current.next_node = after_current
    end
  end

  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end

  def get_node(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current
  end
end
