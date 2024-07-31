# 8. **Loop - Array Search and Manipulation:** Create a class called "ArrayProcessor" with methods to search for a specific element in an array and return its index. Implement a separate method to square each element of the array and return the updated array. Demonstrate the usage of these methods with sample data.
class ArrayProcessor
  def initialize(array)
    @array = array
  end

  def find_index(element)
    index = @array.index(element)
    index.nil? ? 'Element not found' : index
  end

  def square_elements
    @array.map { |element| element**2 }
  end
end

array = [1, 2, 3, 4, 5]
processor = ArrayProcessor.new(array)

element_to_find = 3
index = processor.find_index(element_to_find)
puts "Index of #{element_to_find}: #{index}"

squared_array = processor.square_elements
puts "Squared elements: #{squared_array}"
