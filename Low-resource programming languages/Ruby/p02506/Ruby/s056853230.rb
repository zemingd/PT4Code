word = gets.chomp.upcase
cnt = 0
catch(:loop) do
	while true
		str = gets.upcase.delete(".").split(" ")
		throw :loop if str == "END_OF_TEXT"
		str.each do |s|
			if s == word then cnt += 1
			end
		end
	end
end
puts cnt