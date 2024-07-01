a, b, c = gets.split.map(&:to_i)
d = 0
for i in a..b do
	if c % i == 0 then
		d += 1
	end
end
puts d