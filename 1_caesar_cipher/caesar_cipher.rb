

def caesar_cipher(string, shift)
  shift = shift.to_i
  alphabet = ("a".."z").to_a
  alphabet_length = alphabet.length
  string_array = string.split('')

  string_array.map do |letter|
    is_upcase = letter.upcase == letter
    if alphabet.include?(letter.downcase)
      index = alphabet.find_index(letter.downcase).to_i
      modified_index = index + shift

      if modified_index > alphabet_length
        modified_index = modified_index - alphabet_length
      end
     next is_upcase ? alphabet[modified_index].upcase : alphabet[modified_index]
    end
    letter
  end.join
end

puts "Enter the text to cipher"
string_input = gets.chomp

puts "Enter the shift you want to implement"
shift_cipher = gets.chomp.to_i

puts "\nyour ciphered message is:"
ciphered_text = caesar_cipher(string_input,shift_cipher)
puts ciphered_text

# TestBlock
# string_test = "What a string!"
# shift_cipher = 5
