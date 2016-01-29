# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Ivy Vetor]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
# 1. Initial Solution
def mode(array)
  most_freq = []
  numbers = Hash.new(0)
  max_frequency = 0
  
  array.each { |item|
    numbers[item] += 1  
  }
  numbers
  
  numbers.each { |key,val|
    if val > max_frequency
      max_frequency = val
    end
  }
  
  numbers.each { |key,val|
    if val == max_frequency
      most_freq << key
    end
    }
  
  return most_freq
end

=end

# 3. Refactored Solution
def mode(array)
  most_freq = []
  numbers = Hash.new(0)
  
  array.each { |item|
    numbers[item] += 1  
  }
  
  numbers.each { |k, v| 
  	if v == numbers.values.max
  	  most_freq << k
  	end 
  }
 
  most_freq 
end



# 4. Reflection
=begin
	
1.Which data structure did you and your pair decide to implement and why?
We decided to go with a hash structure to build a frequency table.

2.Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes, I think we did a good job with our pseudocode. We used it to write our initial solution and then refactored after that.

3.What issues/successes did you run into when translating your pseudocode to code?
Since we broke the problem down pretty well we had success in each step. We had few stumbles trying to implement what we were trying to do.
	But eventually we came up with the right code.

4.What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used the each method quite a bit in the first solution since it is very similar for iterating though arrays and hashes.
Then we basically were able to combine our last two iteration blocks into one with the max method.
	
=end







