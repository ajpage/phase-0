# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [17:15-] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: die.sides outputs the number of sides (array length)
# die roll returns a random array element
# Steps:
# initialize with class variables
# IF a new instance of die is passed an empty array
#   raise an argument error about needing input
# END IF
# define method sides 
# returns the length of the array
# define method roll
# FOR 0 up to and including the last index of the input array
# return the content of a random index
# END FOR



# Initial Solution
=begin
class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.length == 0
  		raise ArgumentError.new("Die must have at least one side")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
    rand_idx = rand(0...@labels.length)
    return @labels[rand_idx]
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty?
  		raise ArgumentError.new("Die must have at least one side")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
    return @labels[rand(0...@labels.length)]
  end
end






# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
In the first die class the number of sides was an argument while this time it had to be found by the length of the array.
Also there was slightly different implementation finding a random roll since I had to return a value at an index instead of just a random number in a range.
Not much logic really changed though.

What does this exercise teach you about making code that is easily changeable or modifiable? 
I was easily able to make two difference die classes with little change.

What new methods did you learn when working on this challenge, if any?
I used the empty? method this time instead of checking for array.length == 0

What concepts about classes were you able to solidify in this challenge?
Creating class methods made more sense this time around.

=end

