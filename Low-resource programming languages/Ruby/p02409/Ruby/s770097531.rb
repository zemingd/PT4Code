temp = Array.new(12, 0)
temp.size.times{ |i|
	temp[i] = Array.new(10,0)
}

n = gets.chomp.to_i #amount of info
n.times do
	str = gets.chomp.split(" ").map(&:to_i)
	if str[0] == 2
		str[0] == 3
	elsif str[0] == 3
		str[0] == 6
	elsif str[0] == 4
		str[0] == 9
	end
	temp[str[0] + str[1] - 1][str[2]] += str[3]
end

for i in 0...12 do
	for j in 0...10 do
		print temp[i][j].to_s + " "
	end
	if i ==2 || i == 5 || i ==8
		puts "####################"
	else
		puts
	end
end