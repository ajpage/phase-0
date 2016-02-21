# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

=begin
def is_fibonacci?(num)
    if num = 0
       return true
    end
 
    fib_array = [1,1]
    a = 0
    b = 1
    sum = fib_array[a] + fib_array[b]
   
    while num > sum
        sum = fib_array[a] + fib_array[b]
        fib_array << sum
        a += 1
        b += 1
    end
 
    fib_array.include?(num)
end
=end

# Refactored Solution 
 
def is_fibonacci?(num)
    fib_array = [0,1]
    a = 0
   
    while num > fib_array[-1]
        sum = fib_array[a] + fib_array[a+1]
        fib_array << sum
        a += 1
    end











# Reflection