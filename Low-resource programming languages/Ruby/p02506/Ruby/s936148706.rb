word = gets.chomp.downcase
result = 0
while (state = gets.chomp) != "END_OF_TEXT"
  result += state.downcase.split(/\W+/).count(word)
end
puts result