h,w = gets.chomp.split.map(&:to_i)
gs = h.times.map{gets.chomp.chars}

gs.map!{|g| g if g.any?("#")}.compact!
gs = gs.transpose
gs.map!{|g| g if g.any?("#")}.compact!

gs.transpose.each do |g|
	puts g.join("")
end