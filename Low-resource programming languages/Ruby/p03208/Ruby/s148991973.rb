n, k = gets.split.map &:to_i
a = []
n.times do |i|
	a[i] = gets.to_i
end

a.sort!
min_h = 10**10
(a.length-k+1).times do |i|
	h = a[i..i+k-1]
	if (h[2] - h[0]) < min_h
		min_h = h[2] - h[0]
	end
end

p min_h