word = gets.chomp
while true
  str = gets.split(" ")
  break if str == "END_OF_TEXT"
  str.downcase!
  cnt = str.count(word)
end
puts cnt