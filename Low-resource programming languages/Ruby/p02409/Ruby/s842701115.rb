def print_living_num(apart)
	# for not printing # at last line
	count = 0
	apart.each do |f|
		f.each do |r|
			r.map{|v| print " #{v}"}
			puts ""
		end
		# not printing # at last line
		if count != 3
			20.times{print "#"}
			puts ""
		end
		count += 1
	end
end

apart = Array.new(4){Array.new(3){Array.new(10){0}}}
n = gets.strip().to_i
n.times do
	lines = gets.strip().split(" ").map{|i| i.to_i}
	b = lines[0]
	f = lines[1]
	r = lines[2]
	v = lines[3]
	apart[b-1][f-1][r-1] += v
end
print_living_num(apart)
