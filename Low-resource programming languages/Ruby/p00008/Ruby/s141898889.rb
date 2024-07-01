while n = gets.to_i
	cn = 0
	if(n > 0 && n <= 50)
		for a in 0..9
			for b in 0..9
				for c in 0..9
					for d in 0..9
						if(a + b + c + d == n)
							cn = cn + 1
						end
					end
				end
			end
		end
		p cn
	end
end