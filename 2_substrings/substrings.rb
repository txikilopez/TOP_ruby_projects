require "pry-byebug"
def substrings(phrase, word_collection)
  phrase = phrase.downcase
  word_collection = word_collection.map {|word| word.downcase}
  # binding.pry
  word_collection.reduce(Hash.new(0)) do |accum, word|
    if phrase.include?(word)
      accum[word] = phrase.scan(word).length
    end
    accum
  end
  
end

# testblock
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string_test = "Howdy partner, sit down! How's it going?"

# puts "Enter a phrase you want to check:"
# string_test = gets.chomp

# puts "Enter a list of words separated by a comma"
# dictionary = gets.chomp
# dictionary = dictionary.split(", ")

# puts "The phrase includes the following subset of words in the word collection" 
puts substrings(string_test, dictionary)
