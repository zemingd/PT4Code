i = 0
a = Array.new
a[0] = gets.to_i
while a[i] != 0 do
	i += 1
	a[i] = gets.to_i
end
i = 0
while a[i] != 0 do
	puts "Case #{i}: #{a[i]}"
	i += 1
end