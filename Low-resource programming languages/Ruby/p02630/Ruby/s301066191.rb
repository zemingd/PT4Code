n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
bc = Array.new(q){gets.split.map(&:to_i)}
val = Array.new(10**5 + 1, 0)
a.each{|v| val[v] += 1}
total = val.map.with_index{|v, n| v * n}.sum
q.times{|i|
	total += (bc[i][1] - bc[i][0]) * val[bc[i][0]]
	val[bc[i][1]] += val[bc[i][0]]
	val[bc[i][0]] = 0
	puts total
}