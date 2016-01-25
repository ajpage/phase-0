# Concatenate Two Arrays

# I worked on this challenge [by myself].
=begin
input: two arrays
output: one array

create an empty container object for the final array to go into

for EACH element in the first array
	push it to the container object

for EACh element in the second array
	push it to the container object



=end
# Your Solution Below
=begin
def array_concat(array_1, array_2)
   Your code here

  concat = []

  array_1.each { |idx1|
    concat << idx1
  }

  array_2.each { |idx2|
    concat << idx2
  }

  return concat
end

=end

def array_concat(array_1, array_2)
  array_1.concat(array_2)
end

def array_concat(array_1, array_2)
  array_2.each { |word| array_1 << word }
end




