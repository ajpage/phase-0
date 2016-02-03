# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [19:00-] hours on this challenge.

# Pseudocode

# Input: an integer (a guess)
# Output: a symbol of high, low or correct depending on the guess
# Steps:
# method guess take an integer as input (a guess)
# IF guess > answer
#   return :high
# ELSE IF guess < answer
#   return :low
# ELSE
#   return :correct
# END IF ELSE
#
# method solved takes the return value of the guess method as input
# IF the guess method returned the true symbol
#   return true
# ELSE
#   return false
# END IF


# Initial Solution

class GuessingGame
@@last_guess = nil  	
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	if guess > @answer
  		@@last_guess = :high
  	elsif guess < @answer
  		@@last_guess = :low
  	else
  		@@last_guess = :correct
  	end
  	return @@last_guess
  end

  def solved?
  	return false
  	until @@last_guess == :correct
  	  return true
  	end
  end
  
end




# Refactored Solution






# Reflection