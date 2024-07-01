while n=gets.to_i
	count=0
	if n<0 || n>37
		puts "0"
		next
	end
	for a in 0..9
		if a > n
			break
		end
		for b in 0..9
			if a+b > n
				break
			end
			for c in 0..9
				if a+b+c > n
					break
				end
				for d in 0..9
					if a+b+c+d == n
						count+=1
#						puts "#{a} #{b} #{c} #{d} #{count}"
						break
					elsif a+b+c+d >n
						break
					end
				end
			end
		end
	end
	puts count
end