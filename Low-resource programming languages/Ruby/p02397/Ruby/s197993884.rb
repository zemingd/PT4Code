i = 0
a = Array.new
b = Array.new
aa, bb = gets.split.map(&:to_i)
a[0] = aa
b[0] = bb
while a[i] != 0 || b[i] != 0
	i += 1
aa, bb = gets.split.map(&:to_i)
a[i] = aa
b[i] = bb
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