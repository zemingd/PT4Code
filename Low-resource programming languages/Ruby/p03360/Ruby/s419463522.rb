a, b, c = gets.split.map(&:to_i)
k = gets.to_i

max = a
max = b if max < b
max = c if max < c
max2 = max

k.times do
	max += max
end

if max2 == a
	puts max + b + c
elsif max2 == b
	puts max + a + c
else
	puts max + a + b
end
		
