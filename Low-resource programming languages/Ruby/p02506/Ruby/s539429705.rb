word = gets
cnt = 0
catch : loop do
	while true
		str = gets.delete(".").sprit(" ")
		for i in 0...(str.length)
			if str[i] == word then cnt += 1
			elsif str[i] == "END_OF_TEXT" then throw loop
			end
		end
	end
end
puts "#{cnt}"