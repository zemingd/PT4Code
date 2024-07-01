data = gets.chomp.split(' ')
num = Array.new
data.each do | i |
	num.push(i.to_i)
end
num.sort.each_with_index do | r, i |
	print r
	if (i + 1) == 3
		puts ""
	else
		print " "
	end
end