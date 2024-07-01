word = gets.chomp
count = 0
while (line = gets.chomp) != "END_OF_TEXT"
	count += line.downcase.scan(/#{word}/).size
end

puts count