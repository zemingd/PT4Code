s = Array.new(3)
3.times do |i|
	s[i] = gets.chomp
end
puts s[0][0]+s[1][1]+s[2][2]