a = Array.new
b = Array.new
a[0], b[0] = gets.split.map(&:to_i)
i = 0
while a[i] != 0 && b[i] != 0 do
	i += 1
	a[i], b[i] = gets.split.map(&:to_i)
end
i = 0
while a[i] != 0 && b[i] != 0 do
	for j in 1..a[i] do
		for k in 1..b[i] do
			print "#"
		end
		puts
	end
	puts
	i += 1
end