cnt = 0
word = gets.downcase.chomp
while (text = gets) != "END_OF_TEXT"
  t_word = text.split.map(&:downcase)
  t_word.each do |t|
    cnt += 1 if word == t
  end
  puts cnt
end