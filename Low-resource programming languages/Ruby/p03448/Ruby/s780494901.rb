a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

count = 0
(a + 1).times do |i|
	(b+1).times do |j|
		(c+1).times do |k|
			count += 1 if i * 500 + k * 100 + k * 50 == x
			end
		end
	end
puts count
