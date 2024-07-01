i = 0
a = Array.new
a[i], a[i+1] = gets.split.map(&:to_i)
while a[i] != 0 || a[i+1] != 0
	i += 2
a[i], a[i+1] = gets.split.map(&:to_i)
end
i = 0
while a[i] != 0 || a[i+1] != 0
	if a[i] < a[i+1] then
		puts "Case #{i + 1}: #{a[i]} #{a[i+1]}"
	else
		puts "Case #{i + 1}: #{a[i+1]} #{a[i]}"
	end
	i += 2
end