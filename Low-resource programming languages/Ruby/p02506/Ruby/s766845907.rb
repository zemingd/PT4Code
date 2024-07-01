word = gets.chomp.upcase
cnt = 0
catch(:loop) do
	while true
		str = gets.upcase.delete(".").split(" ")
		str.each do |s|
			if s == word then cnt += 1
			end
			throw :loop if s == "END_OF_TEXT"
		end
	end
end
puts "#{cnt}"