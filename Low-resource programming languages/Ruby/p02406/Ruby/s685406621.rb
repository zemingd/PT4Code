n = gets.to_i
i = 1
while i <= n
	x = i
	if x % 3 == 0
		print( " #{i}" )
	else
		while x != 0
			if x % 10 == 3
				print( " #{i}" )
				break
			else
				x /= 10
			end
		end
	end
	i += 1
end
print( "\n" )