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
class Board
  attr_accessor :board
  
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end
  
  def print_board
    puts "-------------"
    @board.each do |row|
      puts "| #{row.join(' | ')} |"
      puts "-------------"
    end
  end
  
  def make_move(spot, number)
  
  end


  
end

#example usage cases:
board = Board.new
board.print_board