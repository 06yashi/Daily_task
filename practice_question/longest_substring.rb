# Find the longest sequence
class ConsecutiveSubsequence
  def initialize(array)
    @array = array
  end

  def longest_consecutive
    return 0 if @array.empty?

    num_map = @array.each_with_object({}) { |num, map| map[num] = true }

    longest_length = 0

    @array.each do |num|
      if !num_map.key?(num - 1)
        current_sequence = (num..Float::INFINITY).take_while { |n| num_map.key?(n) }

        longest_length = [longest_length, current_sequence.size].max
      end
    end

    longest_length
  end
end

def user_input
  print 'Enter the elements of the array separated by spaces: '
  input = gets.chomp
  array = input.split.map { |str| str.to_i }

  finder = ConsecutiveSubsequence.new(array)
  result = finder.longest_consecutive
  puts "The length of the longest consecutive subsequence is: #{result}"
end

user_input
