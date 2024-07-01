n = gets.to_i

k6 = []
k9 = []

(1..10).each{ |i|
	if 6 ** i <= n then
		k6 << 6 ** i
	end
	
	if 9 ** i <= n then
		k9 << 9 ** i
	end
}

k6.reverse!
k9.reverse!

s = [n]
count = 0

while true
	min = s.min
	if min < 6 then
		puts count + min
		exit
	end

	next_s = []
	s.each{ |ss|
		next6 = k6.bsearch{ |x| x <= ss }
		
		if next6 != nil then
			next_s << ss - next6
		end
		
		next9 = k9.bsearch{ |x| x <= ss }
		
		if next9 != nil then
			next_s << ss - next9
		end
		
		s = next_s
	}

	count += 1
end