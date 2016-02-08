#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection
=begin
1. What are these methods doing?
all of the what_is_ methods are getter methods so they GET the current value of the variable
while the change_my_ methods are setter methods and SET the value of the variable

2. How are they modifying or returning the value of instance variables?
They are being modified inside the class

3. What changed between the last release and this release?
Instead of using the what_is_age method to get the value of the instance variable @age an attribute reader was used.

4. What was replaced?
The getter method what_is_age

5. Is this code simpler than the last?
Yes

6.What changed between the last release and this release?
Used an attribute writer instead of a setter method

7.What was replaced?
The setter method change_my_age was replaced 

8.Is this code simpler than the last?
yes

9. What is a reader method?
A reader method is a method that allows an instance variable to be read outside of the class

10. What is a writer method?
A writer method allows an instance variable to be changed outside of the class

11. What do the attr methods do for you?
attr_accessor is both a reader and a writer
attr_reader is a reader method
attr_writer is a writer method

12. Should you always use an accessor to cover your bases? Why or why not?
No because sometimes you dont want a variable to be changed once the instance of the class has been created
For instance a type of tree will always be that type of tree

13. What is confusing to you about these methods?
This cleared up a lot
=end