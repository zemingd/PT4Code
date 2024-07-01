n,k = gets.split.map(&:to_i)
h = Array.new
c = 0
x = 0
ans = 1000000000

n.times do
	h << gets.to_i
end

h.sort!

(n-k+1).times do
	x = h.values_at(c..c+k-1).max - h.values_at(c..c+k-1).min
	ans = x if x < ans
	c += 1
end

puts ans
	