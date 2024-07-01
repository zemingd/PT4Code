a, b, c = gets.split.map(&:to_i)
k = gets.to_i

max = a
max = b if max < b
max = c if max < c

k.times do
	max += max
end

if max == a
	puts max + b + c
elsif max == b
	puts max + a + c
else
	puts max + a + b
end
		
