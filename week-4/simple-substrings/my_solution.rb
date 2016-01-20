
# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
def welcome(address)
  arr = address.split(" ")
  i = 0

  while i < arr.length
  	if arr[i] == "CA"
  	  return "Welcome to California"
  	end
  	i += 1
  end
  
  return "You should move to California"
end