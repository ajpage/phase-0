original_list = "carrots apples cereal pizza"

def create_list(list)
	list_array = list.split(" ")
	new_list = {}
	list_array.each { |item|
		new_list[item] = 1
	}
	return new_list
end

final_list = create_list(original_list)


# Method to add an item to a list
# input: 
# 1. item name and optional quantity
# 2. the list
# steps:  
# IF item doesn't exist
# create a name with associated optional quantity (if defined) ELSE default quantity (1)
# ELSE
# add to existing quantity
# output: 
# new list

def add_item (item, qty, final_list)
  final_list[item] = (final_list.has_key?(item)) ? final_list[item] + qty : qty
end


# Method to remove an item from the list
# input: 
# 1. item name
# 2. the list
# steps:
# purge the item/quantity pair from the container
# output:
# new list

def delete_item(item, final_list)
  final_list.delete(item)
end

# Method to update the quantity of an item
# input: 
# 1. the item
# 2. new-quantity
# 3. the list
# steps: 
# IF EXISTS
# Set the quantity to new-quantity
# ELSE NOT EXISTS
# error message "Doesn't exist"
# output: 
# new list


def update_item(item, qty, final_list)
  if final_list.has_key?(item)
  	final_list[item] = qty
  else
  	puts "Doesn't exist"
  end
end




# Method to print a list and make it look pretty
# input:
# 1. the list
# steps:
# FOR EACH item, print name and quantity
# output:
# prints item name and quantity

def print_list(final_list)
	final_list.each { |item, qty|
		puts "#{item}: #{qty}"
	}
end


print_list(final_list)

=begin

1. What did you learn about pseudocode from working on this challenge?
The more detailed and broken down the pseudocode the easier it will be to write the actual methods.
Our pseudocode was really good and took up quite a bit of our gps time but once we actually got into writing the methods it went by quickly. 

2. What are the tradeoffs of using Arrays and Hashes for this challenge?
Using an array would have made it harder to modify the list because it would require iterating through the array to do so.
I think using a hash was the best choice since we didn't really care about order and really made the modification methods easy.

3. What does a method return?
Methods return the value of the last statement, or whatever the return statement is.

4. What kind of things can you pass into methods as arguments?
Methods can take in strings, integers, floats, arrays, hashes. Really any type of object.

5. How can you pass information between methods?
Using arguments in the methods. 

6. What concepts were solidified in this challenge, and what concepts are still confusing?
I got more comfortable with using hashes and pseudocoding but definitely still need to work on both.
	

=end









