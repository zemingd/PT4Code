count = gets.chomp.to_i
cities = gets.chomp.split.map(&:to_i)
powers = gets.chomp.split.map(&:to_i)
monsters = 0
count.times do |i|
	if powers[i] > cities[i]
		powers[i] -= cities[i]
		monsters += cities[i]
		if powers[i] > cities[i + 1]
			monsters += cities[i + 1]
			cities[i + 1] = 0
		else
			cities[i + 1] -= powers[i]
			monsters += powers[i]
		end
	else
		monsters += powers[i]
	end
end
puts monsters