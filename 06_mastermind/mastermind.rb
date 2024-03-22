class Mastermind
    COLORS = ["R", "G", "B", "Y", "O", "P"].freeze

    def self.print_colors_with_colors
        COLORS.each do |color|
          case color
          when "R"
            puts "\e[31m#{color}\e[0m"
    end
end