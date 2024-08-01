
def substrings(phrase, word_collection)
  word_collection.reduce(Hash.new(0)) do |accum, word|
    if phrase.include?(word)
      accum[word] = accum[word] + 1
    end
    accum
  end
end

# testblock
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# string_test = "below"

puts "Enter a phrase you want to check:"
string_test = gets.chomp

puts "Enter a list of words separated by a comma"
dictionary = gets.chomp
dictionary = dictionary.split(", ")

p "the phrase includes the following subset of words in the word collection" 
p substrings(string_test, dictionary)
