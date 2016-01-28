# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
=begin
--pseudocode--
input: an array of strings and a letter to find
output: an array of all strings with input letter
steps:
create container for the output
for each element in the input array IF it contains thing_to_find
add it to the container 
END IF  
=end

def my_array_finding_method(source, thing_to_find)
  found = []

  source.each { |idx|
    if idx.to_s.include? thing_to_find
      found << idx
    end
  }

  found
end

=begin
--pseudocode--
input: a hash and a number to find
output: an array of the keys that have the value to find
steps:
create an empty container to hold the pet names
for each key value pair
  IF the value is what we are trying to find
    store the key in the container
  END IF
=end
def my_hash_finding_method(source, thing_to_find)
  pets = []

  source.each {  |key, val|
    if val == thing_to_find
      pets << key
    end
  }

  pets
end

# Identify and describe the Ruby method(s) you implemented.
# include? : this returns a boolean value. True if the string contains the given string or character and false if it does not
# << appends the object following it to whatever it is pointing at. If it is pointing to a string it will append it to the end of the string.
#       if it is appending to an array it will be a new element
# Hash.each calls the code block for each key value pair passing the key and value as parameters 

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#