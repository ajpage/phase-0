# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
 create a container with elements 'B' 'I' 'N' 'G' 'O'
 create a container to store the letter number combo
 select a random index from the letter elements and store that element in the empty container
 select a random number between 1 and 100 inclusive and join it with the letter
 output the call

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
=end
# Initial Solution
=begin
class BingoBoard
  
  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = ['B', 'I', 'N', 'G', 'O']
    @call = ''
    idx = rand(0...@letters.length)
    @call <<  @letters[idx]
    @call << rand(1..100).to_s
  end

  def check
    i = 0
    while i < 5
      if @bingo_board[i][@idx] == @num
        @bingo_board[i][@idx] = "X"  
      end
      p @bingo_board[i]
      i += 1
    end
  end


end
=end

# Refactored Solution

class BingoBoard
  
  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = ['B', 'I', 'N', 'G', 'O']
    @call = ''
    @idx = rand(0...@letters.length)
    @num = rand(1...100)
    @call <<  @letters[@idx]
    @call << @num.to_s
    puts @call
  end

#must call before you can check
  def check
    i = 0
    p "B---I---N---G---O"
    while i < 5
      if @bingo_board[i][@idx] == @num
        @bingo_board[i][@idx] = "X"  
      end
      p @bingo_board[i]
      i += 1
    end
  end


end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check



#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I feel like im getting better at pseudocoding at it is helping me quite a bit to make the actual coding easier when it get to be time
What are the benefits of using a class for this challenge?
  You can create many instances of a bingo game
How can you access coordinates in a nested array?
  first choose what sub array you want and then the element. So in the board array if I want to access the number 8
  I would do board[0][3] because it is in the first subarray (index 0) and the element at index 3 in that subarray
What methods did you use to access and modify the array?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
 I learned about the sample method but ultimately did not use it because i needed to find the index of the letter and found it to be easier to just hold the index as its own variable
How did you determine what should be an instance variable versus a local variable?
 I used i as a local variable because it was only being used in the check method. All of the other variables were used throughout the class so they needed to be instance variables
What do you feel is most improved in your refactored solution?
 it actually works
=end
