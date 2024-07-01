count = gets.chomp.to_i
cities = gets.chomp.split
powers = gets.chomp.split
monsters = 0
count.times do |i|
	cities[i] = cities[i].to_i
	powers[i] = powers[i].to_i
end
cities[count] = cities[count].to_i
count.times do |i|
	i = count - i - 1
	if powers[i] > cities[i + 1]
		powers[i] -= cities[i + 1]
		monsters += cities[i + 1]
		if powers[i] > cities[i]
			monsters += cities[i]
		else
			cities[i] -= powers[i]
			monsters += powers[i]
		end
	else
		monsters += powers[i]
	end
end
puts monsters