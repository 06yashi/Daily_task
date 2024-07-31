 # 9. **Object Comparison:** Create a class called "Student" with attributes for name and score. Implement a method to compare two student objects based on their scores and return the student with the higher score. Create objects of the class and demonstrate the comparison method.

 # creatye the student class
class Student
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  def self.compare(student1, student2)
    if student1.score > student2.score
      student1
    elsif student2.score > student1.score
      student2
    end
  end
end
print 'Enter the name of student 1:'
name1 = gets.chomp

print 'Enter the score of student 1:'
score1 = gets.chomp.to_i

print 'Enter the name of student 2:'
name2 = gets.chomp

print 'Enter the score of student 2:'
score2 = gets.chomp.to_i

student1 = Student.new(name1, score1)
student2 = Student.new(name2, score2)

higher_score_student = Student.compare(student1, student2)

if higher_score_student
  puts "#{higher_score_student.name} has the higher score of #{higher_score_student.score}."
else
  puts 'Both students have the same score.'
end
