n = gets.to_i
l = gets.chomp.split(" ").map(&:to_i).sort.reverse

results = 0
0.upto(n - 1) do |a|
	b = a + 1
	c = n - 1
	while b < c
		if l[c] > l[a] - l[b] then
			results = results + c - b
			b = b + 1
		else
			c = c - 1
		end
	end
end
p results