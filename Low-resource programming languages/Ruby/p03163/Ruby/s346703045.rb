n, w = gets.split.map &:to_i

ws = []
vs = []

n.times{
	w_temp, v_temp = gets.split.map &:to_i
	ws << w_temp
	vs << v_temp
}

cost = []

cost[0] = [{}, 0]

(1..w).each_with_index{ |ww, i|
	cost[ww] = [[], 0]
	ws.each_with_index{ |w, j|
		if ww >= w then
			temp = cost[ww - w][1] + vs[j]
			if cost[ww - w][0][j] == nil && cost[ww][1] < temp then
				arr = cost[ww - w][0].clone
				arr[j] = true
				cost[ww] = [arr, temp]
			end
		end
	}
}

puts cost.last[1]
