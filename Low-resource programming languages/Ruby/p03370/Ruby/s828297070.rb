n, x = gets.split.map(&:to_i)
m = []
for i in 0...n
	m[i] = gets.to_i
end
a = x - m.inject(:+)
cnt = n
while(a / m.min > 0)
	a -= m.min
	cnt += 1
end
puts cnt