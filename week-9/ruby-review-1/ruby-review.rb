# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
#input: an integer
#output: that integer in words - a string
#steps:
#create hash with the keys being the integers and the values being the integers in words. 
#Will need 0-19 and then 20-100 in increments of 10.
#create an empty array numberString to put the string equivalent into

#IF the input is between 0-20 inclusive
#  set the numberString equal to the hash with the integer at that key ie hash[key]
#ELSEIF the input is between 21 - 99
#  push the value of input at element 0 times 10 in the hash to the numberString array
#  push the value of input and element 1 in the hash to the numberString array unless value is 0
#ELSE (number is 100)
#  push the value of hash[100] to the numberString array

# return the numberString array after joining with a space


# Initial Solution

def in_words(number) 
  numbers_to_words = {
    0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight',
    9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
    16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty',
    50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety', 100 => 'one hundred'
}

numberString = []

if number < 21
  numberString << numbers_to_words[number]
elsif number < 100
  numStr = number.to_s
  numberString << numbers_to_words[(numStr[0].to_i * 10)]

  unless numStr[1].to_i == 0
    numberString << numbers_to_words[numStr[1].to_i]
  end
else
  numberString << numbers_to_words[100]
end
  
return numberString.join(' ')

end

puts in_words(1)
puts in_words(30)
puts in_words(35)
puts in_words(99)


# Refactored Solution

def in_words(number) 
  numbers_to_words = {
    0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight',
    9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
    16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty',
    50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety', 100 => 'one hundred'
  }

  numberString = []

  if number < 21
    numberString << numbers_to_words[number]
  elsif number < 100
    numStr = number.to_s
    numberString << numbers_to_words[(numStr[0].to_i * 10)]

    unless numStr[1].to_i == 0
      numberString << numbers_to_words[numStr[1].to_i]
    end
  else
  numberString << numbers_to_words[100]
  end
  
  return numberString.join(' ')

end





# Reflection