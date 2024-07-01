count = gets.chomp.to_i
dishes = gets.chomp.split
points = gets.chomp.split
bonuses = gets.chomp.split
result = 0
count.times do |i|
	result+=points[i].to_i
	if dishes[i].to_i - dishes[i - 1].to_i == 1 && i != 0
		result += bonuses[dishes[i-1].to_i-1].to_i
	end
end
puts result