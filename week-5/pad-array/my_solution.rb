# Pad an Array

# I worked on this challenge [with: Phil Barnett ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin
REFLECTION

1. Were you successful in breaking the problem down into small steps?
Yes. We identified the input and output and then were able to decide what to do step by step for each method.

2. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, after we pseudocoded we were able to write our methods out from it with little editing.
Our non-destructive array did not pass all the rspec tests initially but we were able to fix it once we saw our new_array variable was pointing at the same object as the original variable. 

3. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution didn't pass having different object id's because we made new_array = array so they were pointing at the same object id
To fix this we created a new empty array and concatenated it with the original array

4. When you refactored, did you find any existing methods in Ruby to clean up your code?
Not really. We tried to find a method that would add the optional value to the end of the array without looping but didn't find anything that would work.

5. How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solution is readable. We could have picked a better variable name than new_array like nondestructive_array though.

6. What is the difference between destructive and non-destructive methods in your own words?
Non-destructive methods return a copy of the original with the changes that have been made leaving the original copy in tact.
Destructive methods alter the original copy.

=end



# 0. Pseudocode

# What is the input?
#Input will be an array, a minimum size for the array, and what the array should be padded with if not long enough.
# What is the output? (i.e. What should the code return?)
#It will return an the same array or a copy of it either padded or not padded depending on the minimum size.
# What are the steps needed to solve the problem?
# Define methods
# Compare the length of the array to the minimum size
# IF length is greater than or equal to minimum size you'll output the array 
# ELSE length is less than the minimum size you'll need to push in the pad value into the array as many times as it is shorter. END IF ELSE
#Use a while loop if you need to add to the array


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    return array  
  else
    while array.length < min_size
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  if array.length >= min_size
    return array  
  else
    new_array = array
    while new_array.length < min_size
      new_array << value
    end
  end
  return new_array
end

=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length < min_size
    while array.length < min_size
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  new_array.concat(array)
  if new_array.length < min_size
    while new_array.length < min_size
      new_array << value  
    end
  end
  return new_array
end

