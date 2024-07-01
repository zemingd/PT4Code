n,y = gets.split(' ').map(&:to_i)
y = y/1000
ans = '-1 -1 -1'

for c in 0..y
	if ((10 * n - y - 9 * c) % 5) == 0
		b = (10 * n - y - 9 * c) / 5
		a = n - b - c
		if c <= n && b >= 0 && a >= 0
			ans = a.to_s + ' ' + b.to_s + ' ' + c.to_s
			break
		else
			break
		end
	else
		c += 1
	end
end
puts ans
