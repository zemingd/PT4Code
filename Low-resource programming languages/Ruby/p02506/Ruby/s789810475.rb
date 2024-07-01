w     = gets.chomp.downcase
words = $<.read.split.take_while{|s| s != "END_OF_TEXT"}.map(&:downcase)

n_matches = words.select{|word| word == w}.length
puts n_matches