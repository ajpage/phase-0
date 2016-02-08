# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with Ian Fricker].
# I spent [1.5] hours on this challenge.

# Pseudocode
=begin
# Input: credit card number (an integer)
# Output: true if its valid else false
# Steps:
IF credit card number is not 16 digits
  give an argument error
END IF
split number into an array with each element being a digit
iterate over the array starting at the second to last element
double every other number and replace it in the array
  IF doubled number is greater than 9
    add the digits together
  END IF

add all elements 
check if divisible by 10
return true or false about divisiblity 

=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  
  def initialize(number)
    @number = number
    if @number.to_s.length != 16
      raise ArgumentError.new("Must be 16 digits")
    end
  end

  
  def check_card
    @number = @number.to_s.split(//)
    i = 14
    while i >= 0
      @number[i] = @number[i].to_i * 2
      if @number[i] > 9
        @number[i] = (@number[i].to_s[0].to_i + @number[i].to_s[1].to_i) 
      end
      i -=2
    end
    @total = 0
    @number.each {|x| @total = @total + x.to_i}
    if @total % 10 == 0
      true
    else
      false
    end
  end
  
end



# Refactored Solution

def check_card
    @number = @number.to_s.split(//)
    i = 14
    while i >= 0
      @number[i] = @number[i].to_i * 2
      if @number[i] > 9
        @number[i] = (@number[i].to_s[0].to_i + @number[i].to_s[1].to_i) 
      end
      i -=2
    end
    @number.inject(0){|sum,x| sum + x.to_i }
    if sum % 10 == 0
      true
    else
      false
    end
  end
  
end






array.inject(0){|sum,x| sum + x }
# Reflection
=begin

1. What was the most difficult part of this challenge for you and your pair?
Switching between strings and integers to get the code to work

2. What new methods did you find to help you when you refactored?
The inject method instead of just iterating though the array with the each method.

3. What concepts or learnings were you able to solidify in this challenge?
I became more comfortable with class structures and instance variables.

=end