a, b, c, d = gets().split(' ').map(&:to_i)

def gcd(n, m)
	if n < m
		a = m
		b = n
	else
		a = n
		b = m
	end

	return (a % b == 0 ? b : gcd(b, a % b))
end

lcm = c * d / gcd(c, d)

sum = b - a + 1
sum -= (b * 1.0 / c).floor - (a * 1.0 / c).ceil + 1 if c <= b
sum -= (b * 1.0 / d).floor - (a * 1.0 / d).ceil + 1 if d <= b
sum += (b * 1.0 / lcm).floor - (a * 1.0 / lcm).ceil + 1 if lcm <= b

puts sum
