res = Array.new
loop do
	rd = gets.chomp.split(" ")
	rd.each_with_index do | r, i |
		rd[i] = r.to_i
	end
	if rd[0] == 0 && rd[1] == 0
		break
	end
	res.push(rd.sort)
end
res.each do | r |
	puts "#{r[0]} #{r[1]}"
end