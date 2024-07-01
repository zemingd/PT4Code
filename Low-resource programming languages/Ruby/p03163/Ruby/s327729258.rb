n, w = gets.split.map &:to_i

cost = Array.new(w + 1, 0)

(1..n).each.with_index(0){ |nn, i| 
	w_temp, v_temp = gets.split.map &:to_i

	w.downto(w_temp).each{ |ww|
		temp = cost[ww - w_temp] + v_temp
		if cost[ww] < temp then
			cost[ww] = temp
		end
	}
}

puts cost[w]
