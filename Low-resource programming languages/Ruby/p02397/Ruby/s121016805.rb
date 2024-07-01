i = 0
a = Array.new
b = Array.new
a[0], b[0] = gets.split.map(&:to_i)
while a[i] != 0 || b[i] != 0
	i += 1
a[0], b[0] = gets.split.map(&:to_i)
end
i = 0
while a[i] != 0 || b[i] != 0
	if a < b then
		puts "Case #{i + 1}: #{a[i]} #{b[i]}"
	else
		puts "Case #{i + 1}: #{b[i]} #{a[i]}"
	end
	i += 1
end