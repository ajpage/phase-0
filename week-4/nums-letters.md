1. What does puts do?  
Puts stands for "put string" and returns nil but prints the output the the console.

2. What is an integer? What is a float?  
Integers and numbers without decimal points like 4, 5000, or -89. Making floats (or floating-point) number with decimal points such as 4.0, 0.87 or -56.12.

3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Like returns like so float number division will return a float and integer division will return an integer. In integer division if the result is not an integer the computer will round down to the nearest integer.
For example:  
9 / 2 will return 4 since 4.5 rounds down to 4.
9.0 / 2.0 will return 4.5

```ruby
puts 365 * 24
puts 10 * 365 * 24 * 60
```