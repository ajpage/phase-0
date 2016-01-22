# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Robbie Santos ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: number
# Steps to solve the problem.
# Create a sum variable equal to 0 (0 is additive identity)
# for each consecutive element in the array of numbers, add to previous sum
# sum = sum + value of current element
# move to next element
# [3,2,4]
# sum = 0 
# sum = 0 + 3 
# sum = 3 + 2
# sum = 5 + 4
# sum = 9 ==> our return value
# 1. total initial solution
=begin
def total(array)
  sum = 0
  
  array.each { |idx|
    sum = sum + idx
  }
  return sum
end
=end

# 3. total refactored solution
def total(array)
  array.reduce(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array 
# Output: string
# Steps to solve the problem.
=begin
create an empty string element to contain the final string
for the first element capitalize it and add it and a space to the string
for all other elements except the last one add them plus a space to the string
add the last element to a string followed by a period	


=end
# 5. sentence_maker initial solution
=begin
def sentence_maker(array)
  i = 0
  sentence = ""

  while i < array.length
    if i == 0
      sentence << array[i].to_s.capitalize
      sentence << " "
      i += 1
    elsif i == array.length - 1
      sentence << array[i].to_s
      sentence << "."
      i += 1
    else
      sentence << array[i].to_s
      sentence << " "
      i += 1
    end
  end

  return sentence

end
=end






# 6. sentence_maker refactored solution

def sentence_maker(array)
  array[0] = array[0].capitalize
  
  array.join(" ") + "."
end










