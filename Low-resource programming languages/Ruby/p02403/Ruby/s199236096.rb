while true
	h, w = gets.split.map{|x| x.to_i}
	if h == 0 and w == 0
		break
	end
	
	h.times do
		w.times do
			print "#"
		end
		puts ""
	end
	puts ""
end