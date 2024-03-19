#game intro
puts "Welcome to Tic Tac Toe! The rules are the same old ones. Have fun!"

print "Enter Player 1's name: "
player1_name = gets.chomp
puts "#{player1_name} is X"

print "Enter Player 2's name: "
player2_name = gets.chomp
puts "#{player2_name} is O"

puts "Let's start the game! #{player1_name} vs #{player2_name}"

class Game
  attr_accessor :board, :current_player, :player1_name, :player2_name
  
  def initialize(player1_name, player2_name)
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @current_player = 1
    @player1_name = player1_name
    @player2_name = player2_name
  end
  
  def draw_board
    puts "-------------"
    @board.each do |row|
      puts "| #{row.join(' | ')} |"
      puts "-------------"
    end
  end
  
  def make_move
    symbol = current_player == 1 ? 'X' : 'O'
    print "#{current_player == 1 ? player1_name : player2_name}, pick a spot (1-9): "
    move = gets.chomp.to_i
    
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
  # it's (move -1) because move numbers are 1-based, whereas the array index is 0-based  
    row = (move -1) / 3
    col = (move -1) % 3
    [row, col]
  end

  def switch_player
    @current_player = @current_player == 1 ? 2 : 1
  end

  def check_winner(player1_name, player2_name)
    symbols = ['X', 'O']

    symbols.each do |symbol|
    # check rows
    @board.each do |row|      
      return player1_name if row.all? { |spot| spot == symbol}
      return player2_name if row.all? { |spot| spot == symbol}
    end
    # check columns
    @board.transpose.each do |col|
      return player1_name if col.all? {|spot| spot == symbol}
      return player2_name if col.all? {|spot| spot == symbol}
    end
    # check diagonals
      diagonal1 = [@board[0][0], @board[1][1], @board[2][2]]
      diagonal2 = [@board[0][2], @board[1][1], @board[2][0]]
      return player1_name if diagonal1.all? { |spot| spot == symbol}
      return player2_name if diagonal1.all? { |spot| spot == symbol}
      return player1_name if diagonal2.all? { |spot| spot == symbol}
      return player2_name if diagonal2.all? { |spot| spot == symbol}
    end
    # default return value if no winning condition is found
      false
  end

  def print_result
    winner = check_winner
    if winner
      puts "Congratulations #{winner}! You won!"
    else
      puts "It's a draw!"
    end
  end
end

#example usage cases:
board = Game.new(player1_name, player2_name)
board.draw_board
board.make_move
board.draw_board
board.make_move
board.draw_board
board.make_move
board.draw_board
board.make_move
board.draw_board
board.make_move
board.draw_board
board.make_move
board.draw_board



#TODO:
#add a method to check the winner
#check for diagonal combos
#check for the method calls