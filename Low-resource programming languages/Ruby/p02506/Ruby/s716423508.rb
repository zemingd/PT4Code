word = gets.chomp.upcase
cnt = 0
catch(:loop) do
	while true
		str = gets.upcase.delete(".").split(" ")
		for i in 0...(str.length)
			if str[i] == word then cnt += 1
			end
			throw :loop if str[i] == "END_OF_TEXT"
		end
	end
end
puts "#{cnt}"