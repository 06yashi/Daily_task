# make a max array class
class MaximumSubarray
  def initialize(array)
    @array = array
  end

  def max_subarray_sum
    return 0 if @array.empty?

    max_sum = current_sum = @array.first

    @array.drop(1).each do |num|
      current_sum = [current_sum + num, num].max
      max_sum = [max_sum, current_sum].max
    end

    max_sum
  end
end

def get_user_input
  print "Enter the elements of the array separated by spaces: "
 
  begin
    input = gets.chomp
    array = input.split.map do |str|
      Integer(str) rescue (raise "Input contains non-integer values.")
    end

    raise "Array is empty" if array.empty?

    result = MaximumSubarray.new(array).max_subarray_sum
    puts "The maximum subarray sum is: #{result}"
  
end