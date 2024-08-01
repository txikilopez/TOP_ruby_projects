

def caesar_cipher(string, shift)
  shift = shift.to_i
  alphabet = ("a".."z").to_a
  alphabet_length = alphabet.length
  string_array = string.split('')

  string_array.map do |letter|
    is_upcase = letter.upcase == letter
    if alphabet.any?(letter.downcase)
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

# TestBlock
# string_test = "What a string!"
# shift_cipher = 5
# ciphered_text = caesar_cipher(string_test,shift_cipher)
# puts ciphered_text