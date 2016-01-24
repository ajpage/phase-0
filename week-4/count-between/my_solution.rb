# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0
=begin
input: an array, an upper and lower bound
output: an integer

create a variable initiated at zero to account for all the elements in the range
for EACH element in the array
  IF the element is greater than or equal to the lower bound
  AND less than or equal to the upper bound
    add one to the counter
  END IF	  
end EACH	

	
=end

# Your Solution Below
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  counter = 0

  list_of_integers.each { |idx|
    if idx >= lower_bound and idx <= upper_bound
      counter += 1
    end
  }

  counter

end

=end


def count_between(list_of_integers, lower_bound, upper_bound)
  counter = 0

  list_of_integers.each {  |idx|
    if (lower_bound..upper_bound).include?(idx)
  	  counter += 1
    end
  }

  counter

end









