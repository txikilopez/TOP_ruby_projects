# frozen_string_literal: true

def caesar_cipher(string, shift)
  shift = shift.to_i
  alphabet = ('a'..'z').to_a
  string_array = string.split('')
  engine_caesar(string_array, alphabet, shift)
end

def engine_caesar(array, abcd, shift)
  array.map do |letter|
    is_upcase = letter.upcase == letter
    if abcd.include?(letter.downcase)
      index = abcd.find_index(letter.downcase).to_i
      mod_index = (index + shift) % abcd.length
      is_upcase ? abcd[mod_index].upcase : abcd[mod_index]
    else
      letter
    end
  end.join
end

puts 'Enter the text to cipher'
string_input = gets.chomp

puts 'Enter the shift you want to implement'
shift_cipher = gets.chomp.to_i

puts "\nyour ciphered message is:"
ciphered_text = caesar_cipher(string_input, shift_cipher)
puts ciphered_text

# TestBlock
# string_test = "What a string!"
# shift_cipher = 5
