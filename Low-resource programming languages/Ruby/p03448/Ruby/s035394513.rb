a, b, c, x = gets.chomp.to_i

count = 0
(a + 1).times do |i|
	(b+1).times do |j|
		(c+1).times do |k|
			count += 1 if i * 500 + k * 100 + k * 50 == x
			end
		end
	end
puts count
