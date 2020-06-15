# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
#   if !(position_taken?(board, index))
#   false
# else
  combination = nil
  WIN_COMBINATIONS.each do |win_combination|
    win = win_combination.all? do |win_index|
      if board[win_index] == "X" || board[win_index] == "O"
         win_combination
      end
    end
    if win
      combination = win_combination
    end
  end
  combination
end




def full?(board)
  board.all? {|index| board[index] == "X" || board[index] == "O" }
end

def draw?(board)
  if full?(board) && !won(board)
    true
  elsif (!full(board) && !won(board))|| won(board)
    false
  end
end
