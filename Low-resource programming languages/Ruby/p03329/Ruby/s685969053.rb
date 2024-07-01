n = gets.to_i
min = 10000000
(n+1).times do |i|
	t = i	
	cc = 0

	while t > 0
		cc += t % 6
		t /= 6
	end

	t = n - i
	while t > 0
		cc += t % 9
		t /= 9
	end
	min = cc if cc < min
end

puts min