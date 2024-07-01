w = gets.chomp
cnt = 0
while input = gets
  break if input == "END_OF_TEXT"
  word = input.split(" ")
  word.each do |item|
    cnt += 1 if item.casecmp(w) == 0
  end
end
puts cnt