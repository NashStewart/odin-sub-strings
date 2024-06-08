string1 = "below"
string2 = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  sub_strings = string.downcase.split
  dictionary.reduce(Hash.new(0)) do |words, word|
    sub_strings.each do |sub_string|
      words[word] += 1 if sub_string.include? word
    end
    words
  end
end

puts "Sub-strings: #{dictionary}"

puts "\nWord: \"#{string1}\""
p substrings(string1, dictionary)

puts "\nWord: \"#{string2}\""
p substrings(string2, dictionary)

