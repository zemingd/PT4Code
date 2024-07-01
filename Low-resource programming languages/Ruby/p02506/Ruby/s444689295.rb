word = gets.chomp
cnt = 0
str = ""
while true
  str = gets.chomp.split(" ")
  break if str == "END_OF_TEXT"
  str.downcase!
  str.each do |i|
    cnt += 1 if i == word
  end
end
puts cnt