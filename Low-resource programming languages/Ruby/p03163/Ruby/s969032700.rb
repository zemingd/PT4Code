n, w = gets.split.map &:to_i

wv = []

n.times{
	w_temp, v_temp = gets.split.map &:to_i
	wv << [w_temp, v_temp]
}

wv.sort!{ |a,b| b[1] <=> a[1] }

cost = Array.new(n + 1).map{ Array.new(w + 1, 0) }

(1..n).each.with_index(0){ |nn, i| 
	(1..w).each{ |ww|
		cost[nn][ww] = cost[nn - 1][ww]
		
		if wv[i][0] <= ww then
			temp = cost[nn - 1][ww - wv[i][0]] + wv[i][1]
			if cost[nn][ww] < temp then
				cost[nn][ww] = temp
			end
		end
	}
}

puts cost[n][w]
