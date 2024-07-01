h, w = gets.chomp.split.map(&:to_i)
map = Array.new(h)
h.times do |i|
	# 障害物 true
	map[i] = gets.chomp.chars.map{|a| a == "#" ? true : false}
end

distmap = Array.new(h).map{Array.new(w).map{Array.new(4, 0)}}


h.times do |i|
	# left
	prev = 0
	w.times do |j|
		if map[i][j]
			prev = j 
			distmap[i][j][0] = 0
		else
			distmap[i][j][0] = j - prev 
		end
	end

	# right
	prev = w - 1
	(w-1).downto(0) do |j|
		if map[i][j]
			prev = j 
			distmap[i][j][1] = 0
		else
			distmap[i][j][1] = prev - j
		end
	end
end

w.times do |j|
	# up
	prev = 0
	h.times do |i|
		if map[i][j] 
			prev = i
			distmap[i][j][2] = 0
		else
			distmap[i][j][2] = i - prev 
		end
	end

	prev = h - 1
	(h-1).downto(0) do |i|
		if map[i][j]
			prev = i
			distmap[i][j][3] = 0
		else
			distmap[i][j][3] = prev - i
		end
	end
end

max = 0
distmap.each do |d|
	d.each do |dd|
		sum = dd.inject(:+)
		max = sum if max < sum 
	end
end
puts max
