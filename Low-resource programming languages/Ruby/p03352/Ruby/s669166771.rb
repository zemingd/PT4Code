x = gets.to_i
ans = 1
(2..x).each do |i|
	j = 2
	while i ** j <= x
		ans = i ** j if ans < i ** j
		j += 1
	end
end
puts ans