# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 172
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# There is a missing end and the interpreter goes through the whole file
# 6. Why did the interpreter give you this error?
# The while loop is missing an end keyword

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# in main
# 5. Why did the interpreter give you this error? 
# The interpreter does not know if this is a variable or a method

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# in main
# 5. Why did the interpreter give you this error?
# The interpreter is trying to access the method cartman but it has not been defined yet

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# in cartmans_phrase
# 5. Why did the interpreter give you this error?
# There are no arguments for the method cartmans_phrase so when the method is called and
# given an argument the interpreter gives an error

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# When calling the method 
# 5. Why did the interpreter give you this error?
# The interpreter is expecting an argument when calling the method cartman_says



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# on line 111 when calling the method
# 5. Why did the interpreter give you this error?
# The interpreter is expecting two arguments when calling the method cartmans_lie but it only found one

# --- error -------------------------------------------------------

5 #* "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# at the splat *
# 5. Why did the interpreter give you this error?
# * or a splat is used to not specify how many arguments needed in a method

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by zero
# 4. Where is the error in the code?
# was not expecting a 0 after the division sign
# 5. Why did the interpreter give you this error?
# The interpreter will not divide by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/alyssapage/Desktop/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# After require_relative
# 5. Why did the interpreter give you this error?
# The interpreter cannot find the file it is looking for because it does not exist on my system


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
The one missing the end input what tricky because it gave a line error that I was not expecting
How did you figure out what the issue with the error was?
I read that it was an end of input error and missing the end keyword so I knew there must be a missing end
Were you able to determine why each error message happened based on the code? 
Yes they were pretty straight forward for the most part.
When you encounter errors in your future code, what process will you follow to help you debug?
I will follow something similar to this process because error messages can give very helpful information when debugging.	

	
=end





