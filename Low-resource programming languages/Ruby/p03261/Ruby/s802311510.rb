n = gets.to_i

exist_words = []
exist_words.push(gets.chomp)

flag = true
for i in 2..n
  current_word = gets.chomp
  if exist_words.include?(current_word) || !exist_words.last.end_with?(current_word.chr)
    #p exist_words.include?(current_word)
    #p exist_words.last.end_with?(current_word)
    #p current_word
    flag = false
    break
  end
  
  exist_words.push(current_word)
end

puts 'Yes' if flag
puts 'No' if !flag
