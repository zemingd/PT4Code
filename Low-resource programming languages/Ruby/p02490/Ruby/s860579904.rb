a = Array.new
b = Array.new
i=0

loop do
	x, y = gets.split
	
	if x.to_i == 0 && y.to_i == 0 
		break
	else
		a[i] = x.to_i 
		b[i] = y.to_i
	end
	i += 1
end

a.length.times do |j|
	if a[j] < b[j]
		print a[i]," ",b[j]
	else
	 	print b[j]," ",a[j]
	end
	print "\n"
end