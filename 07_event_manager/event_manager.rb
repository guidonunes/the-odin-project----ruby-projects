require 'csv'

puts 'EventManager initialized'

contents = CSV.open(
    'event_attendees.csv', 
    headers: true,
    header_converters: :symbol
    )

contents.each do |row|
    name = row[:first_name]
    zipcode = row[:zipcode]
    puts "#{name} #{zipcode}"
end


# TO BE CONTINUED: Iteration 1: Parsing with CSV
