dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    # create an empty hash to store the count of substrings
    substrings_count = Hash.new(0)
    word = word.downcase

    dictionary.each do |substring|
        if word.include?(substring.downcase)
            substrings_count[substring.downcase] += 1
    end
end

substrings_count

end

substrings("Howdy partner, sit down! How's it going?", dictionary)
