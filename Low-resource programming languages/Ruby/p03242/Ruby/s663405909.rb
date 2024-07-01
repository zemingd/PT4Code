n = gets.split(//).map(&:to_i)
i = 0

3.times do
	if n[i] == 1
		n[i] = 9
	else
		n[i] = 1
	end
	i += 1
end

puts n.join