s = gets.chomp
a_idx = -1
z_idx = -1
s.size.times do |i|
	if s[i] == "A" && a_idx == -1
		a_idx = i
	end
	if s[i] == "Z"
		z_idx = i
	end
end

puts z_idx - a_idx + 1