x = gets.to_i

s = 100
count = 0

while s < x
	s = (s * 1.01).floor
	count += 1
end

puts count
