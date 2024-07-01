n,m = gets.split.map &:to_i

p = []

m.times{
	p << ( gets.split.map(&:to_i) << 0)
}

ps = p.sort{ |a, b| a[0] != b[0] ? a[0] <=> b[0] : a[1] <=> b[1] }

temp_p = ps[0][0]
count = 0
ps.each{ |x|
	if temp_p == x[0] then
		count += 1
		x[2] = count
	else
		temp_p = x[0]
		count = 1
		x[2] = count
	end
}

p.each{ |x|
	puts sprintf("%06d%06d", x[0], x[2])
}
