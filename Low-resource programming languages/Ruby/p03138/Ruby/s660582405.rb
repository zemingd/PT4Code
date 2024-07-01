n, k = gets().split(' ').map(&:to_i)
a = gets().split(' ').map(&:to_i)

b = []

for i in 0 ... a.length
	j = 0
	ai = a[i]
	while ai > 0
		b[j] = 0 unless b[j]
		b[j] += (ai & 1)
		j += 1
		ai >>= 1
	end
end

max = -1
for x in 0 .. k
	s = 0
	j = 0
	while (1 << j) <= x
		b[j] = 0 unless b[j]
		s += ((x & (1 << j)) > 0 ? (n - b[j]) : b[j]) << j
		j += 1
	end

	max = s if max < s
end

puts max
