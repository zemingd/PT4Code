
H, W = gets.strip.split(/ /).collect(&:to_i)
grid = []
H.times{
	grid << gets.strip.each_char.collect{|c| c == "#"}
}

counts = []

grid.each_with_index{|line, y|
	c_line = [nil] * W
	counts << c_line
	count = nil
	W.times{|x|
		c = line[x]
		if c
			c_line[x] = 0
			count = 0
		else
			if count
				count += 1
				c_line[x] = count
			end
		end
	}
	count = nil
	W.times.reverse_each{|x|
		count2 = c_line[x]
		if count2 != nil && (count == nil || count2 <= count)
			count = count2
		elsif count
			count += 1
			c_line[x] = count
		end
	}
}

counts = counts.transpose

counts.each{|c_line|
	count = nil
	H.times{|y|
		count2 = c_line[y]
		if count2 != nil && (count == nil || count2 <= count)
			count = count2
		elsif count
			count += 1
			c_line[y] = count
		end
	}
	H.times.reverse_each{|y|
		count2 = c_line[y]
		if count2 != nil && (count == nil || count2 <= count)
			count = count2
		elsif count
			count += 1
			c_line[y] = count
		end
	}
}

max = 0
counts.each{|line|
	line.each{|count|
		if count > max
			max = count
		end
	}
}

puts max
