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

max = [a.max, k].max()
sum = 0
i = 0
while (1 << i) <= max
	b[i] = 0 unless b[i]
	sum += (b[i] < n / 2.0 ? (n - b[i]) : b[i]) << i
	i += 1
end

puts sum
