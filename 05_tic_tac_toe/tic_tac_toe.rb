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
end

#example usage cases:
board = Board.new
board.print_board