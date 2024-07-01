a, b, c = gets.split.map{|x| x.to_i}
count = 0
for x in a..b
	if c%x == 0
		count+=1
	end
end
puts count