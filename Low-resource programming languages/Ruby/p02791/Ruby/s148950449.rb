N = gets.to_i
P = gets.split.map &:to_i

m = P[0]
cnt = 0
N.times{|i|
	if P[i] <= m
		cnt += 1
		m = P[i]
	end
}
p cnt