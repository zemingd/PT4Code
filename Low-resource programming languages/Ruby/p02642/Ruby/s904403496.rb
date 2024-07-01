gets
a = gets.split.map(&:to_i).sort
max = 10 ** 6
f = Array.new(max + 1, 0)
d = Array.new(max + 1, 0)
ans = 0
a.each{|n|
	if d[n] == 1
		ans -= 1
		d[n] = 0
	end
	if f[n] == 1
		next
	end
	ans += 1
	t = n
	j = 1
	while t <= max
		f[t] = 1
		t += n
	end
	d[n] = 1
}
puts ans