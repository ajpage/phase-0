=begin
#address solution file
https://github.com/ajpage/phase-0/blob/master/week-4/address/my_solution.rb

#math solution file
https://github.com/ajpage/phase-0/blob/master/week-4/math/my_solution.rb

How do you define a local variable?
	local_var = "this is a local variable"

How do you define a method?
	def method_name (arg)
		method content
	end

What is the difference between a local variable and a method?
Local varibles store information that can be used at another time.
A method does some task.

How do you run a ruby program from the command line?
	ruby file_name.rb

How do you run an RSpec file from the command line?
	rspec rspec_file_name.rb

What was confusing about this material? What made sense?
It has all just been refresher so far.
=end

#full name greeting
puts "What is your first name?"
first_name = gets.chomp
puts "What about your middle name?"
middle_name = gets.chomp
puts "I need your last name too!"
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name

#bigger, better favorite number
puts "What is your favorite number?"
fav_number = gets.chomp
bigger_better = fav_number.to_i + 1
puts "Well " + bigger_better.to_s + " is a bigger and better number"
