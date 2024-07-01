while input_num = gets.to_i
	if input_num >= 37
		puts 0
		else
		counter = 0
		for a in 0..9
			for b in 0..9
				for c in 0..9
					for d in 0..9
					counter += 1 if input_num == (a+b+c+d)	
					end
				end
			end
		end
	puts counter
	end
end