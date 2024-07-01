input = gets.to_i

for i in 3..input do
	
	if i % 3 == 0
		print " #{i}"
	else
		j = i
		loop do
			if j % 10 == 3 
				print " #{i}"
			end
			j /= 10
			if j / 10 == 0
				break
			end
		end
	end
	
end

print "\n"