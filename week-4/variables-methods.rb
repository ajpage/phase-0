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