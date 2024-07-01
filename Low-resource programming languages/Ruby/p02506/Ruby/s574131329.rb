word = gets.chomp.downcase
cnt = 0
str = ""
while true
  input = gets.chomp
  break if input == "END_OF_TEXT"
  str += input.downcase + " "
end
str.split(" ").each do |i|
  cnt += 1 if i == word
end
puts cnt