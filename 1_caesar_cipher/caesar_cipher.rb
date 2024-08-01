# require "pry-byebug"

string_test = "what a string"
shift_cipher = 5

def caesar_cipher(string, shift)
  shift = shift.to_i
  alphabet = ("a".."z").to_a
  alphabet_length = alphabet.length
  string = string.downcase

  string_array = string.split('')

  string_array.map do |letter|

    # upcase = letter.upcase == letter

    # if alphabet.any?(letter.downcase)
      index = alphabet.find_index(letter.downcase).to_i
      modified_index = index + shift

      # binding.pry

      if modified_index > alphabet_length
        modified_index = modified_index - alphabet_length
      end
      alphabet[modified_index]
      
    # end
    # letter
  end.join
end

ciphered_text = caesar_cipher(string_test,shift_cipher)
puts ciphered_text