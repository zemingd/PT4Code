n, w = gets.split.map &:to_i

wv = []

n.times{
	w_temp, v_temp = gets.split.map &:to_i
	wv << [w_temp, v_temp]
}

cost = Array.new(w + 1, 0)

(1..n).each.with_index(0){ |nn, i| 
	w.downto(wv[i][0]).each{ |ww|
		temp = cost[ww - wv[i][0]] + wv[i][1]
		if cost[ww] < temp then
			cost[ww] = temp
		end
	}
}

puts cost[w]
