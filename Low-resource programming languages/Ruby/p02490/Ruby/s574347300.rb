while true
	x, y = gets.split.map{|i| i.to_i}
	break if x==0 && y==0
	puts [x,y].sort.join("\s")
end