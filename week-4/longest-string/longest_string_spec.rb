# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil
=begin
-pseudocode-
input: array
output: string 

create new string object called longer
SET to first element in list_of_words array

for EACH element in list_of_words array
  IF the element has a length greater than the current longer length
    set longer variable to current index
    move on to next element
  ELSE
    move on to next element
  END IF


=end


# Your Solution Below
=begin

def longest_string(list_of_words)
  # Your code goes here!
  longest = list_of_words[0]
  
  list_of_words.each { |idx|
    if idx.length > longest.length
      longest = idx 
    end
  }
  
  return longest
end

=end

def longest_string(list_of_words)
  list_of_words.max_by { |x| x.length}  
end
