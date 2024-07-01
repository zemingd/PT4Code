n = gets.to_i
town = gets.chomp.split.map(&:to_i)
hero = gets.chomp.split.map(&:to_i)

i = 0
count = 0

while i < n
	if town[i]+town[i+1] < hero[i]
		count += town[i]+town[i+1]
		town[i+1] = 0
	elsif town[i] < hero[i]
		town[i+1] = town[i+1]-(hero[i]-town[i])
		count += hero[i]
	else
		count += hero[i]
	end
	i += 1
end

puts count