N = gets.to_i
words = []
words = N.times.map { gets.chomp }
flag = true
words.each.with_index do |word, i|
  flag = false unless words.count(word) == 1
  flag = false if (i != 0 && words[i-1][-1] != word[0])
end
puts flag ? "Yes" : "No"
