# Define the NonRepeating class
class NonRepeating
  def initialize(input_string)
    @input_string = input_string
  end

  def first_nonrepeating
    char_count = Hash.new(0)
    @input_string.each_char { |char| char_count[char] += 1 }

    @input_string.each_char.with_index do |char, index|
      return char if char_count[char] == 1
    end

    -1
  end
end

def user_input
  print 'Enter a string: '
  input = gets.chomp

  finder = NonRepeating.new(input)
  result = finder.first_nonrepeating

  puts result == -1 ? 'No non-repeating character found.' : "The first non-repeating character is: #{result}"
end


user_input
