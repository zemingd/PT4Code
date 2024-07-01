i = 0
a, b = Array.new
a[0], b[0] = gets.split.map(&:to_i)
while a[i] != 0 || b[i] != 0
	i += 1
a[0], b[0] = gets.split.map(&:to_i)
end
i = 0
while a[i] != 0 || b[i] != 0
	puts "Case #{i + 1}: #{a[i]} #{b[i]}"
	i += 1
end