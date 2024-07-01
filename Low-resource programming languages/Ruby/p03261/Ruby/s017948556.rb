n = gets.to_i
break_flag = 0
first_word = gets.chomp
word_list = []
word_list.push(first_word)
last_letter = first_word[first_word.length - 1]
i = 1
while i < n
  w = gets.chomp
  if last_letter != w[0]
      break_flag = 1
  end
  last_letter = w[w.length - 1]
  word_list.push(w)
  i += 1
end
if word_list.size != word_list.uniq.size || break_flag == 1
  puts "No"
else
  puts "Yes"
end