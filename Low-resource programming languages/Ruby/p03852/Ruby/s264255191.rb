c = gets.chomp
puts ["a","i","u","e","o"].any?{|x|x==c} ? "vowel" : "consonant"