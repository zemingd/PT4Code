n = gets.to_i
n.times do |i|
	data = gets.chomp.split.map(&:to_f)
	if data[2]==data[0] or data[6]==data[4]
		if data[2]==data[0] and data[6]==data[4]
			puts "YES"
		else
			puts "NO"
		end
	else
		puts ((data[3]-data[1])/(data[2]-data[0]) == (data[7]-data[5])/(data[6]-data[4])) ? "YES" : "NO"
	end
end