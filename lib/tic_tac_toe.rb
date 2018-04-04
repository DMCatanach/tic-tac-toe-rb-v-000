#Helper methods

WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left column win
  [1,4,7], #center column win
  [2,5,8], #right column win
  [0,4,8], #left diagonal win
  [2,4,6] #right diagonal win
]

def display_board(board)
  #code goes here, once I find my finished work
end

def input_to_index()
  #code
end

def move()
  #code
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?()
  #code
end

def turn()
  #code
end

def turn_count(board)
  counter = 0
  board.each do |index|
    if index.position_taken?
      counter += 1
    end #close if block
  end #close iteration block
  return counter
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && position_taken?(board, combination[0])
  end #close block
end #close method definition

def full?(board)
  !(board.include?(" "))
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end #close block
end #close method definiton
