
# Factorial

# I worked on this challenge [with: Robbie Santos].
=begin
input integer
output integer
	
IF input is zero
  output is one
END

for examples if input was 4
	4 * 3 * 2 * 1
	for any number
	num * (num-1) * (num-2) * ... * 3 * 2 * 1

create variable equal to 1 (since 1 is * identity)

WHILE input > 0 
  var = var * input (if number was 5, var = 1 * 5 on first loop)
  decrese input by 1
ENDWHILE

return var
	
=end

# Your Solution Below
def factorial(number)
  # Your code goes here
  multiplied = 1

  if number == 0
    return 1
  end

  while number > 0
    multiplied = multiplied * number
    number -= 1
  end

  return multiplied
end





