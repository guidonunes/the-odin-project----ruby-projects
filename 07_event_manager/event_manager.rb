require 'csv'

puts 'EventManager initialized'

lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line, index|
# skip header row. It assumes that it is the first row in the file.
    next if index == 0
    columns = line.split(",")
    name = columns[2]
    puts name
end


# TO BE CONTINUED: Iteration 1: Parsing with CSV
