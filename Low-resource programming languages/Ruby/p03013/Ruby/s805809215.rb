n, m = gets.chomp.split(" ").map(&:to_i)
pattern = [1]

for i in 1..m
	a = gets.chomp.to_i
	pattern[a] = 0
end

pattern[1] = 1 if pattern[1].nil?

for i in 2..n
	if pattern[i].nil?
		pattern[i] = pattern[i-2] + pattern[i-1]
	end
end

puts pattern[n] % 1000000007