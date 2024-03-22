class Mastermind
  COLORS = ["R", "G", "B", "Y", "O", "P"].freeze
  
  attr_accessor :player_guess
  
  def initialize
    game_instructions
    @secret_code = secret_code
    @player_guess = player_guess
  end

  def game_instructions
    puts "==================== Welcome to Mastermind! ===================="
    puts " "
    puts "In this game, you will try to guess the secret code." 
    puts "The secret code is a combination of colors."
    puts "The Available colors are:"
    puts " "
    self.class.print_colors_with_colors
    puts " "
    puts "After each guess, you will receive feedback."
    puts " "
    puts "  - ●  means correct color in the correct position."
    puts "  - ○  means correct color but in the wrong position."
    puts "  - #  means incorrect color."
    puts " "
    puts "You have 10 attempts to crack the code. Have fun!"
    puts " "
    puts "=================================================================="
  end

  def secret_code
    COLORS.shuffle.take(4)
  end
  #handles player input
  def player_guess
    puts "It's your time to guess. Enter a sequence of colors (e.g., 'RGBYOP'). Available colors: R, G, B, Y, O, P."
    loop do
      input = gets.chomp.upcase
      if valid_input?(input)
        return stringfy_guess
      else
        puts "Invalid input. Please enter a sequence of valid colors."
      end  
    end
  end

  def valid_input?(input)
    input.match?(/\A[RGBYOP]{4}\z/)
  end

  def stringfy_guess(guess)
    guess.split('')
  end 
  # ANSI scape codes to print names of the constants in different colors on the terminal
  def self.print_colors_with_colors
    COLORS.each_with_index do |color, index|
      color_code = case index
                     when 0 then "\e[31m" 
                     when 1 then "\e[32m"
                     when 2 then "\e[34m"
                     when 3 then "\e[33m"
                     when 4 then "\e[33m"
                     when 5 then "\e[35m" 
                    else "\e[0m"
                   end
    puts "#{color_code}#{color}\e[0m"  
    end
  end
end


#game setup
mastermind = Mastermind.new
mastermind.secret_code
mastermind.player_guess


#TODO:

#implement 10 turns match rule
#assign the correct symbols to the guesses
#implement iteration logic for each play

