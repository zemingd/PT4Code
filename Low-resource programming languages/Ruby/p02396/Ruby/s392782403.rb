data =gets.chomp.split("\n").map(&:to_i)
i = 1
while(data != 0)
	puts "Case " + (i+1) + ":" + data[i]
	i = i+1
end