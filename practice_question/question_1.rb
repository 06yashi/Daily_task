#  1. **Class and Object Creation:** Create a class called "Rectangle" with attributes "length" and "width". Implement methods to calculate the area and perimeter of the rectangle. Create an object of the class and demonstrate the usage of these methods.
# rectangle class
class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * (@length + @width)
  end
end

puts 'Enter the length'
length = gets.chomp.to_i

puts 'Enter the width'
width = gets.chomp.to_i

rectangle = Rectangle.new(length, width)

puts "Area of the rectangle: #{rectangle.area}"
puts "Perimeter of the rectangle: #{rectangle.perimeter}"


