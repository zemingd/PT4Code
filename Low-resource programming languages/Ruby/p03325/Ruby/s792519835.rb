n = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
a.each do |i|
	while i % 2 == 0
		sum += 1
		i /= 2
	end
end

puts sum
