# Class definition
class Calculator
  def calculate(operation, num1, num2)
    case operation
    when :add then num1 + num2
    when :subtract then num1 - num2
    when :multiply then num1 * num2
    when :divide
      num2.zero? ? 'Error: Division by zero' : num1.to_f / num2
    else 'Invalid operation'
    end
  end
end

def menu
  puts <<~MENU
    Select operation:
    1. Addition
    2. Subtraction
    3. Multiplication
    4. Division
  MENU
  print 'Enter choice (1/2/3/4): '
  gets.chomp.to_i
end

def get_number(prompt)
  print prompt
  gets.chomp.to_f
end

operations = { 1 => :add, 2 => :subtract, 3 => :multiply, 4 => :divide }
calculator = Calculator.new

loop do
  choice = menu
  if operations.key?(choice)
    number1 = get_number('Enter the first number: ')
    number2 = get_number('Enter the second number: ')

    result = calculator.calculate(operations[choice], number1, number2)
    puts "The result is: #{result}"
  else
    puts 'Invalid choice, please select a valid operation.'
  end

  print 'Do you want to perform another operation? (yes/no): '
  break if gets.chomp.downcase != 'yes'
end

puts 'Thank you for using the calculator!'
