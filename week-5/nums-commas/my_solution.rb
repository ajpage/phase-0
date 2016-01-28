# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
#a non negative integer
# What is the output? (i.e. What should the code return?) 
#a string of the non negative integer separated by commas
# What are the steps needed to solve the problem?
# create an empty container for the output
# IF the length of the input is less than four
#   convert the integer into a string and store it in the string container
# ELSE
#  starting at the end of the integer convert the last 3 integers to string elements and put them on the end of the string container
#  insert a comma at the beginning of the string
#  repeat until all the integer elemens are added to the string
# END IF ELSE
# 1. Initial Solution
=begin
def separate_comma(int)
  string_num = int.to_s
  number_with_commas = ""
  i=0
  

  if string_num.length < 4
    return string_num
  end

  if string_num.length % 3 != 0
    while i < string_num.length % 3
      number_with_commas << string_num[i]
      i += 1
    end

    while i < string_num.length
      number_with_commas << ","
      number_with_commas << string_num[i]
      i += 1
      number_with_commas << string_num[i]
      i += 1
      number_with_commas << string_num[i]
      i += 1
    end

  else
    while i < 3
      number_with_commas << string_num[i]
      i += 1
    end
    
    while i < string_num.length
      number_with_commas << ","
      number_with_commas << string_num[i]
      i += 1
      number_with_commas << string_num[i]
      i += 1
      number_with_commas << string_num[i]
      i += 1
    end	
  end

  number_with_commas
end

=end


# 2. Refactored Solution
def separate_comma(int)
  string_num = int.to_s
  number_with_commas = ""
  
  if string_num.length < 4
    return string_num
  end

  if string_num.length % 3 != 0
    number_with_commas.concat(string_num.slice!(0...(string_num.length % 3)))
  else
  	number_with_commas.concat(string_num.slice!(0...3))
  end

  while string_num.length != 0
  	number_with_commas << ","
  	number_with_commas.concat(string_num.slice!(0...3))
  end

  number_with_commas
end

puts separate_comma(1234)

# 3. Reflection
=begin


1. What was your process for breaking the problem down? What different approaches did you consider?
I initially started from the end of the number and was trying to add to the output string from the front.
While I'm sure theres a way to do that it wasn't working for me so I started from the front and moved to the end.

2. Was your pseudocode effective in helping you build a successful initial solution?
Yes and no. I wrote my pseudocode for the last index going to index 0 and ended up scratching that idea.
But I did get some ideas from my pseudocode and it helped keep me on the right track.

3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I ended up using the slice! method in my refactored solution. This way when i ran out of used numbers the string was empty.
Also it allowed me to use the same (0..3)slice! code since it is destructive and alters the original string.
It definitely made my code more readable and shorter. 

4. How did you initially iterate through the data structure?
I used a lot of while loops in my initial solution.

5. Do you feel your refactored solution is more readable than your initial solution? Why?	
My refactored solution is shorter and doesn't repeat which I think makes it much more readable even though it does pretty much the same thing.

	
=end















