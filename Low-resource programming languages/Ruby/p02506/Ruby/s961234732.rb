cnt = 0
word = gets.downcase.chomp
while (text = gets.chomp) != "END_OF_TEXT"
  t_word = text.downcase.split
  t_word.each do |t|
    cnt += 1 if word == t
  end
  puts cnt
end