A, B, C, D = gets().strip().split(/ /).collect(&:to_i)

def calc_gcm(a, b)
	if a > b
		r = a % b
		a = r
	end
	
	while a > 0
		r = b % a
		b = a
		a = r
	end
	
	return b
end

def calc_lcm(a, b)
	gcm = calc_gcm(a, b)
	return a * b / gcm
end

def calc(a, c, d)
	lcm = calc_lcm(c, d)
	return a - (a / c) - (a / d) + (a / lcm)
end

puts calc(B, C, D) - calc(A - 1, C, D)
