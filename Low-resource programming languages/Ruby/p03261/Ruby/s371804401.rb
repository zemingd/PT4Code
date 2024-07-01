n = gets.to_i
words = []
flag = true
n.times do
  word = gets.chomp
  flag = false if !words.empty? && (words.last[-1] != word[0] || words.include?(word))
  words << word
end
puts flag ? "Yes" : "No"