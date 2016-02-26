# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Rene].


# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
assign "bettysue" to name variable
call method assert
  raises ERROR unless return value == nil
=end

# 3. Copy your selected challenge here
#!/usr/bin/ruby

# Solution Below
num1 = 7
num2 = 27

# some basic math functions
sum = num1 + num2
difference = num1 - num2
# convert nums to floats 
quotient = num1.to_f / num2.to_f
product = num1 * num2
modulus = num1 % num2


def assert
  raise "Assertion failed!" unless yield
end


test1 = 'local-variable'
assert { test1 == defined?(num1) }
assert { test1 == defined?(num2) }
assert { test1 == defined?(sum) }
assert { test1 == defined?(difference) }
assert { test1 == defined?(product) }
assert { test1 == defined?(quotient) }
assert { test1 == defined?(modulus) }


test2 = Fixnum
assert { test2 == num1.class}
assert { test2 == num2.class}


test3 =  num1 + num2
assert {test3 == sum}

test4 = num1 - num2
assert { test4 == difference }

test5 = num1 * num2
assert { test5 == product }

test6 = num1.to_f / num2.to_f
assert { test6 == quotient }

test6 = num1 % num2
assert { test6 == modulus }