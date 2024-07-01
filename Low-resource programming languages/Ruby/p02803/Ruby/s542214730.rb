$h, $w = gets.split.map &:to_i

$ss = Array.new($h, nil)

$h.times{ |i|
	$ss[i] = gets.chomp.split("")
}

max_route_size = 0

def max_route(temp, map, count)
	is_ex = false
	temp_next = []

	temp.each{ |temp_i|
		h = temp_i[0]
		w = temp_i[1]

		if h > 0 && $ss[h - 1][w] == "." && map[h - 1][w] == false then
			map[h - 1][w] = true
			is_ex = true
			temp_next << [h - 1, w]
		end

		if w > 0 && $ss[h][w - 1] == "." && map[h][w - 1] == false then
			map[h][w - 1] = true
			is_ex = true
			temp_next << [h, w - 1]
		end

		if h < $h - 1 && $ss[h + 1][w] == "." && map[h + 1][w] == false then
			map[h + 1][w] = true
			is_ex = true
			temp_next << [h + 1, w]
		end

		if w < $w - 1 && $ss[h][w + 1] == "." && map[h][w + 1] == false then
			map[h][w + 1] = true
			is_ex = true
			temp_next << [h, w + 1]
		end
	}
	
	if is_ex then
		max_route(temp_next, map, count + 1)
	else
		count
	end
end


(0...$h).each{ |h_i|
	(0...$w).each{ |w_i|
		if $ss[h_i][w_i] == "." then
			map = Array.new($h).map{Array.new($w, false)}
			map[h_i][w_i] = true
			res = max_route([[h_i, w_i]], map, 0)
			
			if max_route_size < res then
				max_route_size = res
			end
		end
	}
}

puts max_route_size