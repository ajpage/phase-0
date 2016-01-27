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










