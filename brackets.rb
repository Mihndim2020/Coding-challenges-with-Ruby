#Setting up a node since out stack in node based
class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end
# We initialize a stack
class Stack
  def initialize
      @head = nil
  end
  def push(number)
    @head = Node.new(number, @head)
  end
  def pop
    raise "Stack is empty" if is_empty?
    @head = @head.next_node
  end
  def topFront
    @head.number if unless is_empty?
  end
  def is_empty?
    @head.nil?
  end
end
end

  # def balanced_brackets?(string)
  #     # your code here
  #     #Initialize Stack
  #     bracket_stack = Stack.new

  #     for i in 0...string.length do
  #         #Rest of the code in here
  #         if bracket_stack.is_empty?
  #           bracket_stack.push(string[i]) if (string[i] == '{' || string[i] == '[' || string[i] == '(')
  #         end

  #         bracket_stack.push(string[i]) if (string[i] == '{' || string[i] == '[' || string[i] == '(')

  #         if (string[i] == '}' || string[i] == ')' || string[i] == ']')
  #           case string[i]
  #           when "]"
  #               if bracket_stack.topFront == "["
  #                   bracket_stack.pop
  #               else
  #                   return false
  #               end
  #           when ")"
  #               if bracket_stack.topFront == "("
  #                   bracket_stack.pop
  #               else
  #                   return false
  #               end
  #           when "}"
  #               if bracket_stack.topFront == "{"
  #                   bracket_stack.pop
  #               else
  #                   return false
  #               end          
  #           end
  #         end 
  #       end       
  #         return false if bracket_stack.head.next_node
  #   end 
  # end
  def balanced_brackets?(string)
    valid_pairs = { '(' => ')',
                    '{' => '}',
                    '[' => ']' 
                  }
    stack = []
  
    string.chars.each do |character|
      if valid_pairs.has_key?(character)
        stack.push(character)
      elsif valid_pairs[stack.last] == character
        stack.pop
      elsif valid_pairs.has_value?(character)
        return false
      end
    end
  
    return stack.count.zero?
  end





puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
