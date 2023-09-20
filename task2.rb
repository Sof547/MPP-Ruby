# Зробити невеликий скрипт
# На вхід передаємо математичний вираз у звичному нам вигляді
# На виході бачимо його у RPN
# EX:
# input --> 2 + 1 × 4
# output --> 2 1 4 * +

# returns true if char is operator or function
def operator? (char)
  functions = %w[sin cos ! + - * / ^]
  functions.include? char
end

# defines priorities for operators and functions
def operator_priority (operator)
  priorities = {
    '+' => 1,
    '-' => 1,
    '*' => 2,
    '/' => 2,
    'sin' => 3,
    'cos' => 3,
    '!' => 3,
    '^' => 4
  }
  priorities[operator] || 0
end

def default_to_rpn(str_to_translation)
  operator_stack = []
  output = []

  str_to_translation.delete(" ").chars.each do |char|
    if char.match?(/[0-9]/) || char.match?(/[a-zA-Z]/)
      # if the symbol is a number or letter, add it to the output
      output.append(char)

    elsif operator? char
      # if the symbol is an operator, process it according to the rules
      while
      !operator_stack.empty? && # stack is not empty
        operator_stack.last != '(' && # last element
        operator_priority(operator_stack.last) >= operator_priority(char) do
          output.append(operator_stack.pop)
      end
      operator_stack.push(char)

    elsif char == '('
      # if the symbol is '(', add it to the operator stack
      operator_stack.push(char)

    elsif char == ')'
      # if the symbol is ')', remove operators from the stack to '('
      while !operator_stack.empty? && operator_stack.last != '('
        output.push(operator_stack.pop)
      end
      operator_stack.pop if operator_stack.last == '('

    end
  end
  # remove the remaining operators from the stack
  output.concat(operator_stack.reverse)
  output.join(' ')
end

def print_result(str_to_translation)
  puts "Infix Expression: #{str_to_translation}"
  puts "Reverse Postfix Notation: #{default_to_rpn(str_to_translation)}"
end

print_result(ARGV[0])
