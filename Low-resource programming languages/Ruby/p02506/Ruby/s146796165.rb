w     = gets.chomp.downcase
words = $<.read.split.map(&:downcase)

n_matches = words.select{|word| word == w}.length
puts n_matches