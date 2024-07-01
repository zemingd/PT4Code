s = 100000

gets.to_i.times do
	s *= 1.05
	s = (s / 1000.0).ceil * 1000
end

puts s