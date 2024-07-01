x = Array.new
y = Array.new
i=0

loop do
	a, b = gets.split
	
	if a.to_i == 0 && b.to_i == 0 
		break
	else
		x[i] = a.to_i 
		y[i] = b.to_i
	end
	i += 1
end

x.length.times do |j|
	if x[j] < y[j]
		print x[i]," ",y[j]
	else
	 	print y[j]," ",x[j]
	end
	print "\n"
end