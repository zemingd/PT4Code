c = STDIN.gets.chomp
puts ["a", "i", "u", "e", "o"].find{|i| i == c} != nil ? "vowel" : "consonant"
