N , X = gets.split.map(&:to_i)
m = []

for i in 0..N-1
	m[i] = gets.to_i
end

X -= m.inject(:+)
print N + X / m.min