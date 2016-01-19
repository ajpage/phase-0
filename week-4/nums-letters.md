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
#Hours in a year
puts 365 * 24

#Minutes in a decade
puts 10 * 365 * 24 * 60
```

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?  
Ruby does arithmetic just as expected with the exception that if the numbers being added, subtracted, etc are integers it will return and integer and likewise if the numbers being used are floats it will return a float. 

2. What is the difference between integers and floats? 
Integers have no decimal component while floats do.   

3. What is the difference between integer and float division?   
Integer division will return an integer. So if there is a decimal component to the answer Ruby will round down to the nearest integer. Float division will return a number with a decimal component.

4. What are strings? Why and when would you use them?   
Strings are letters or groups of letters and possibly numbers. But numbers as strings can not do arithmetic as you would expect. Strings can be used to get or give input from a user.

5. What are local variables? Why and when would you use them?   
Local variables are variables that are accessible only in the location they are initialized, whether this is the file, some method, etc. They are used to store information for later use. 

6. How was this challenge? Did you get a good review of some of the basics?   
I like the book Learn to Program so far. The chapters are short and to the point while also having quite a bit of information. It has been a while since I've don any Ruby so it is good to get back into it.

[Defining Variables](https://github.com/ajpage/phase-0/blob/master/week-4/defining-variables.rb )

[Simple String](https://github.com/ajpage/phase-0/blob/master/week-4/simple-string.rb)

[Basic Math](https://github.com/ajpage/phase-0/blob/master/week-4/basic-math.rb)
