words = []
valid = true
gets.to_i.times do
  word = gets.chomp
  next unless valid

  next valid = false if words.include? word
  next valid = false unless words.empty? || words.last[-1] == word[0]
  words << word
end

puts valid ? "Yes" : "No"
