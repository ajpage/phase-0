# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil
=begin
-pseudocode-
input: array
output: string

create a an object to store the shortest string from the input array
SET this object equal to the array element at index zero

iterate through the array
for EACH element in the array compare it to the current shortest string stored in the object

  IF the current element is shorter
    this is the new shortest element
    move on to the next element
  ELSE
    move on to the next element
  END IF

=end

#Your Solution Below
=begin
def shortest_string(list_of_words)
  # Your code goes here!
  shortest = list_of_words[0]
  
  list_of_words.each { |idx|
    if idx.length < shortest.length
      shortest = idx    
    end
  }
  return shortest
end
=end

def shortest_string(list_of_words)
  list_of_words.min_by { |x| x.length }    
end
