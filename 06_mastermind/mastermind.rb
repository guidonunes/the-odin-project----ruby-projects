class Mastermind
  COLORS = ["R", "G", "B", "Y", "O", "P"].freeze

  def intialize
    game_instructions
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

  # ANSI scape codes to print names of the constants in different colors on the terminal
  def self.print_colors_with_colors
    COLORS.each do |color|
      case color
      when "R"
        puts "\e[31m#{color}\e[0m"
      when "G"
        puts "\e[32m#{color}\e[0m"
      when "B"
        puts "\e[34m#{color}\e[0m"
      when "Y"
        puts "\e[33m#{color}\e[0m"
      when "O"
        puts "\e[33m#{color}\e[0m"
      when "P"
        puts "\e[35m#{color}\e[0m" 
      else
        puts color
      end
    end    
  end
end

mastermind = Mastermind.new
mastermind.game_instructions
