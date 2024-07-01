N = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)

cnt = 0
N.times do |i|
	n = [a[i], b[i]].min
	a[i] = a[i] - n
	b[i] = b[i] - n
	cnt += n

	m = [a[i + 1], b[i]].min
	a[i + 1] = a[i + 1] - m
	b[i] = b[i] - m
	cnt += m
end

puts cnt