n = gets.to_i
first_word = gets.chomp
shiritori_words = [first_word]
used_words = []
ans = 'Yes'

(n-1).times do
  word = gets.chomp
  if used_words.include?(word)
    ans = 'No'
    break
  else
    if shiritori_words[-1][-1] == word[0]
      shiritori_words.push(word)
      used_words.push(word)
      next
    else
      ans = 'No'
      break
    end    
  end
end

puts ans