temp = Array.new(12, 0)
temp.size.times{ |i|
	temp[i] = Array.new(10,0)
}

n = gets.chomp.to_i #amount of info
n.times do
	str = gets.chomp.split(" ").map(&:to_i)
	if str[0] == 1
		str[0] = 0
	elsif str[0] == 2
		str[0] = 3
	elsif str[0] == 3
		str[0] = 6
	elsif str[0] == 4
		str[0] = 9
	end
	
	num = temp[str[0] + str[1] - 1][str[2]-1] + str[3]
	if num < 0
		temp[str[0] + str[1] - 1][str[2]-1] = 0
	elsif num > 9
		temp[str[0] + str[1] - 1][str[2]-1] = 9
	else
		temp[str[0] + str[1] - 1][str[2]-1] = num
	end
end

for i in 0...12 do
	for j in 0...9 do
		print temp[i][j].to_s
		print " "
	end
	print temp[i][9].to_s
	if i ==2 || i == 5 || i ==8
		puts
		puts "####################"
	else
		puts
	end
end