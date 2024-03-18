#game intro
puts "Welcome to Tic Tac Toe! The rules are the same old ones. Have fun!"

print "Enter Player 1's name: "
player1_name = gets.chomp
puts "#{player1_name} is X"

print "Enter Player 2's name: "
player2_name = gets.chomp
puts "#{player2_name} is O"

puts "Let's start the game! #{player1_name} vs #{player2_name}"

#create board
class Game
  attr_accessor :board, :current_player
  
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @current_player = 1
  end
  
  def draw_board
    puts "-------------"
    @board.each do |row|
      puts "| #{row.join(' | ')} |"
      puts "-------------"
    end
  end
  
  def make_move(move)
    symbol = current_player == 1 ? 'X' : '0'
    row, col = play_to_index(move)

    if row and col and @board[row][col].is_a?(Integer)
      @board[row][col] = symbol
      switch_player
    else
      puts 'Ouch! Invalid move. Please select an unoccupied spot (1-9)'
    end
  end

  private

  def play_to_index(move)
  # move numbers are 1-based, whereas the array index is 0-based  
    row = (move -1) / 3
    col = (move -1) % 3
    [row, col]
  end

  def switch_player
    @current_player = @current_player == 1 ? 2 : 1
  end
end

#example usage cases:
board = Game.new
board.draw_board