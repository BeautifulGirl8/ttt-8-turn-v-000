def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character = "X")
board[index] = character
end



def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

<<<<<<< HEAD

=======
   
>>>>>>> 659f2ce6421295385a62c564a62d954009658875


 def valid_move?(board, index)
   !position_taken?(board, index) && index.between?(0,  8)
 end
