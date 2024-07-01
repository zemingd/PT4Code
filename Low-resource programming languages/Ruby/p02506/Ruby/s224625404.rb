word = gets.upcase.chomp
cnt = 0
flg = false
while (line = gets.chomp) != "END_OF_TEXT"
  words = line.split(" ")
  words.each do |w|
    cnt += 1 if w.upcase.chomp(".") == word
  end
  break if flg
end
puts cnt