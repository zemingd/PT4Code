word = gets.chomp
while true
  str = gets.split(" ")
  break if str == "END_OF_TEXT"
  str.downcase!
end
cnt = str.count(word)
puts cnt