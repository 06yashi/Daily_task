# 2. **Inheritance:** Create a base class called "Shape" with a method to calculate the area. Create two derived classes, "Circle" and "Square," that inherit from the Shape class and implement their own versions of the area calculation method. Create objects of both derived classes and demonstrate the usage of the area calculation methods.


# Base class
class Shape
  def circle_area(radius)
    3.14 * radius * radius
  end
  
  def square_area(side_length)
    side_length * side_length
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def display_area
    area = circle_area(@radius)
    puts "The area of the circle with radius #{@radius} is #{area}."
  end
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def display_area
    area = square_area(@side_length)
    puts "The area of the square with side length #{@side_length} is #{area}."
  end
end

print 'Enter the radius of the circle: '
radius = gets.chomp.to_f

circle = Circle.new(radius)
circle.display_area

print 'Enter the side length of the square: '
side_length = gets.chomp.to_f

square = Square.new(side_length)
square.display_area



