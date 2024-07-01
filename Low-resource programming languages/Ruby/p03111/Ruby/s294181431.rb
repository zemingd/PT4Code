n, *a = gets().split(' ').map(&:to_i)

l = []
n.times {|i|
	l[i] = gets().to_i
}

mp_min = 9999
for i in 0 ... (1 << (n * 2))
	g = [[], [], []]
	gi = []
	gcount = [0, 0, 0, 0]
	for j in 0 ... n
		k = ((i >> (j * 2)) & 3)
		g[k].push(l[j]) if k < 3
		gi[j] = k
		gcount[k] += 1
	end
	next if gcount[0] == 0 || gcount[1] == 0 || gcount[2] == 0

	mp = 0
	g.each_with_index {|ge, j|
		mp += (ge.length - 1) * 10 + (ge.sum - a[j]).abs
	}
	mp_min = mp if mp_min > mp
end

puts mp_min
