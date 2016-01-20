# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil
=begin
-pseudocode-
IF list_of_nums is an empty array
  return nil
ENDIF

SET variable largest to first element of list_of_nums
SET index to 1

WHILE value of index is less than the length of list_of_nums
  IF value of list_of_nums at index is greater than largest
    SET largest to list_of_nums at index
    increment index by 1
  ELSE
    increment index by 1
  ENDIF
ENDWHILE	

RETURN value of largest
used above for initial solution - then went with the each method for refactoring
=end

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length == 0
    return nil
  end

  largest = list_of_nums[0]

  list_of_nums.each { |idx|
  	if idx > largest
  	  largest = idx
  	end
  }
  return largest 
end



