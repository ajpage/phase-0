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

class BingoBoard
  @@letters = ['B', 'I', 'N', 'G', 'O']
  @call = ''
  def initialize(board)
    @bingo_board = board
  end

  def call
    @call << @letters[rand(0...@letters.length)]
    @call << rand(1..100)
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection