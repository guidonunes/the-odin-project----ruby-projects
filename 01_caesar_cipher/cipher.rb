def caesar_cipher(message, shift)
    alphabet = ('a'..'z').to_a
    encrypted_message = ""

# convert message to lowercase
    lowercase_message = message.downcase
# iterate through each character in the lowercase message
    lowercase_message.each_char do |char|
        if char.match?(/[a-z]/)
            index = alphabet.index(char)
# caesar cipher shifting logic
            new_index = (index + shift) % 26
            encrypted_message += alphabet[new_index]
        else
# non alphabetic characters are left
            encrypted_message += char
    end
end












#Steps

#1. Convert the message to lowercase
#2. Initialize empty string to store encrypted message
#3. Iterate through each character in the lowercase message

