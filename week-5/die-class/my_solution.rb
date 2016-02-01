# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number of sides on the dice
# Output: number of sides if calling the sides method, random number between 1 and number of sides if calling the roll method
# Steps:
#initialize the class with its instance variable (sides)
#create an argument error if user inputs a number less than 1
#create a side method with no input that outputs the number of sides
#call the @sides instance variable
#create a roll method with no input that outputs a random number on the die
#call rand on 1..sides
# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Only positive numbers are allowed")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end
=end


# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    
    raise ArgumentError.new("Only positive numbers are allowed") if @sides < 1
    
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end






# 4. Reflection
=begin

1. What is an ArgumentError and why would you use one?
An ArgumentError is raised when there is some error from argument(s) input by the user.
It could be the wrong number of arguments or the wrong class for example. 
A user inputting a string where they should input an array could be a use for an argument error.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?


3. What is a Ruby class?
A class in Ruby is like creating a blueprint for a new object. Classes will have attributes (variables) and behaviors (methods).
The methods, or behaviors of classes are shared but each new instance of a class has it's own instance variables.

4. Why would you use a Ruby class?
To be able to construct instances of it throughout some code or other files.

5. What is the difference between a local variable and an instance variable?
Local variables are accessible where they are created and are created using snake_case. Arguments are treated as local variables and are only available to that method.
Instance variables are defined and accessible within a specific instance of a class and have the @ prefix. They are available to every method of the object. 

6. Where can an instance variable be used?
An instance variable can be used in any method of the object.
=end
