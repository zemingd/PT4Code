word = gets.chomp.upcase
cnt = 0
while true
	str = gets.chomp
	if str == "END_OF_TEXT" then break
	end
	str.upcase.split(" ").each do |s|
		if s == word then cnt += 1
		end
	end
end
puts cnt