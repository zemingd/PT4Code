n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
i , j = 0, 0
count = 0
min = 0
last = 0
loop{
	if i < n && (j >= m || a[i] < b[j])
		min += a[i]
		last = a[i]
		i += 1
		count += 1
	elsif j < m
		min += b[j]
		last = b[j]
		j += 1
		count += 1
	else
		break
	end
	if min > k
		min -= last
		count -= 1
		break
	end
}
puts count