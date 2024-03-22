class Mastermind
  COLORS = ["R", "G", "B", "Y", "O", "P"].freeze

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