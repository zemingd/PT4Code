line = gets.chomp.split
people_count = line[0].to_i
point = line[1].to_i
games_count = line[2].to_i
peoples = Array.new(people_count, point)
games_count.times do
	peoples[gets.chomp.to_i - 1] += 1
	peoples.length.times do |i|
		peoples[i] -= 1
	end
end
people_count.times do |i|
	if peoples[i] <= 0
		puts "No"
	else
		puts "Yes"
	end
end