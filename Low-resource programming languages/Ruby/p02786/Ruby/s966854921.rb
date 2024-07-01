def attack(h)
	return 1 if h == 1

	2 * attack(h / 2) + 1
end

h = gets.chomp.to_i
puts attack(h)
