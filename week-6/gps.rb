# Your Names
# 1) Rokas Simkonis
# 2) Alyssa Page

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  if library.has_key?(item_to_make)
    p "We can bake #{item_to_make}"
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  
    
  #1. Get the number of leftover ingredients
  #2.1 Loop to check what we can make
    # If the number of leftover ingredients is > 7
      # Make a pie
      # decrease the number of leftover ingredients by 7
    # Else if the number of ingredients is >= 5 
      # make a Cake
    # Else if the number of ingredients is < 5 
      # We can make some number of cookies
  # 3. After each item is made we can decrease the amount
  # 4. Break from loop when leftover ingredients is zero
  
   cakes = 0
   cookies = 0
    while remaining_ingredients > 0
      if remaining_ingredients > 5
        cakes += 1
        remaining_ingredients -= 5
      else
        cookies += 1
        remaining_ingredients -= 1
      end
    end
  
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}. Suggested baking items: Make #{cakes} cakes and #{cookies} cookies. "
  
end

p serving_size_calc("pie", 39)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("CATS", 5)

#  Reflection