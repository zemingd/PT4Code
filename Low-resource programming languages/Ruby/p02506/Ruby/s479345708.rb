cnt = 0
word = gets.downcase
while (text = gets) != "END_OF_TEXT"
  t_word = text.split.map(&:downcase)
  t_word.each {|t|
    cnt += 1 if word == t
  }
  puts cnt