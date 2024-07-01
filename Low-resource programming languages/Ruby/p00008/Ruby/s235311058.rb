while input_num = gets.to_i
	if input_num > 36
		puts 0
		else
		counter = 0
		10.times{|a|
			10.times{|b|
				10.times{|c|
					10.times{|d|
					counter += 1 if input_num == (a+b+c+d)
					}
				}
			}
		}
	puts counter
	end
end