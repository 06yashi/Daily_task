#  4. **Loop - Array Manipulation:** Create a class called "ArrayManipulator" with a method that takes an array of numbers as input and returns a new array that contains only the even numbers from the original array. Demonstrate the usage of this method with an example.

class ArrayManipulator
  def filter_even_numbers(numbers)
    numbers.select { |num| num.even? }
  end
end


manipulator = ArrayManipulator.new
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

even_numbers = manipulator.filter_even_numbers(numbers)
puts "Even numbers: #{even_numbers}"