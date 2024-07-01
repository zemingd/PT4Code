def call(n)
	1.upto(n) do |i|
		x = i
		if x % 3 == 0
			print " #{i}"
			next
		end
		
		while x != 0
			x, r = x.divmod(10)
			if r == 3
				print " #{i}"
				break
			end
		end
	end

	puts
end

call(gets.to_i)