n, s = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort

hit = 0
for i in (0..n-s)
	hit += h[i]
end
puts hit