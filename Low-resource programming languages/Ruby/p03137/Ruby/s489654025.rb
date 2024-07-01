n, m = gets().split(' ').map(&:to_i)
x = gets().split(' ').map(&:to_i)

if n >= m
	puts 0
else
	xs = x.sort
	dx = []
	for i in 0 ... (xs.length - 1)
		dx[i] = xs[i + 1] - xs[i]
	end

	dx.sort!
	puts dx[0 ... (m - n)].inject(&:+)
end
