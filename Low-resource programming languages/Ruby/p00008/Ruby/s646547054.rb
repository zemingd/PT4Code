while n=gets.to_i
	count=0
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
					end
				end
			end
		end
	end
puts count
end