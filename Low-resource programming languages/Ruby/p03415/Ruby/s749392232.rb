c = []
3.times do
	c.push gets.chomp.split('')
end
print "#{c[0][0]+c[1][1]+c[2][2]}\n"