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
=begin
class GuessingGame
@last_guess = nil  	
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	if guess > @answer
  		@last_guess = :high
  	elsif guess < @answer
  		@last_guess = :low
  	else
  		@last_guess = :correct
  	end
  	@last_guess
  end

  def solved?
    if @last_guess == :correct
      return true
    else
      return false
    end	
  end
  
end
=end



# Refactored Solution
class GuessingGame
@last_guess = nil   

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer
      @last_guess = :high
    elsif guess < @answer
      @last_guess = :low
    else
      @last_guess = :correct
    end
    @last_guess
  end

  def solved?
    return @last_guess == :correct ? true : false
  end
  
end





# Reflection
=begin

1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Each instance of a real-world object can have the same variables with different values that do not effect one another.
  So we can have two instances of a dog. One a 7 year old corgi and one a 3 year old doberman using the same variables (age and breed)
  that get defined each time there is a new dog (class). Likewise you can perform separate actions (methods) with each 
  instance of a dog, although if its treats you might want to give them to both. 

2. When should you use instance variables? What do they do for you?
  Instance variables are defined for each instance of the class. They are accesible anywhere in the class.
  With this guessing game we were able to store the result of the last guess in an instance variable and keep overwriting it with each new #guess

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  The program evaluates some expression and then decides how to proceed from there given the rest of the code blocks
  I did not strugge with it in the challenge but I did try using a ternary operation in my refactor.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Because we were keeping track of the last guess and they have to be read and written.
=end




