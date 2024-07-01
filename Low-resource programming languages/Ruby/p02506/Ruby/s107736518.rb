word = gets.upcase.chomp
cnt = 0
flg = false
while true
  words = gets.upcase.chomp.split(/ /)
  words.each do |w|
    flg = true if w == "END_OF_TEXT"
    cnt += 1 if w == word
  end
  break if flg
end
puts cnt