# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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








# Reflection