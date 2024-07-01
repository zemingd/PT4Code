WORD = gets.chomp
N = gets.chomp.to_i

def next_word(word)
  tmp_word = word.sub('z', 'a')
  return tmp_word if tmp_word != word

  word = word.reverse
  word[0] = word[0].next
  return word.reverse
end

word = WORD
N.times do
  word = next_word(word)
end
puts word
