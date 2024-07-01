w = gets.chomp
line = []
while gets
	line << $_.chomp.split(" ")
	break if line == "END_OF_TEXT"
end


cnt = 0
for str in line.flatten
	if w == str
		cnt += 1
	end
end

puts cnt