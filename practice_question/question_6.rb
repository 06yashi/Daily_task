# 6. **Object Initialization:** Create a class called "Person" with attributes for name, age, and gender. Implement a constructor to initialize these attributes. Create objects of the class and demonstrate the initialization process.

# reate class and oject
class Person
  def information(name, age, gender)
    puts("The information of candidate is  name is : #{name} , the age is :- #{age}, the gender is #{gender}")
  end
end

puts('enter the name of the candidate')
name = gets.chomp.to_s

puts('enter the age of the candidate')
age = gets.chomp.to_i

puts('enter the gender of the candidate')
gender = gets.chomp.to_s

obj = Person.new
obj.information(name, age, gender)