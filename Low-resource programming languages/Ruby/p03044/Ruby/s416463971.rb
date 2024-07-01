N = gets.to_i

v_table = {}
(N - 1).times{
	u, v, w = gets.strip.split(/ /).collect(&:to_i)
	if table = v_table[u]
		table[v] = w
	else
		v_table[u] = { v => w }
	end
	if table = v_table[v]
		table[u] = w
	else
		v_table[v] = { u => w }
	end
}

def color(v_table)
	queue = [1]
	col_table = { 1 => 0 }
	while cur = queue.pop
		col = col_table[cur]
		v_table[cur].each{|v, w|
			if col_table[v] == nil
				if w % 2 == 0
					col_table[v] = col
				else
					col_table[v] = 1 - col
				end
				queue << v
			end
		}
	end
	col_table
end

col_table = color(v_table)

(1..N).each{|n|
	puts col_table[n]
}


