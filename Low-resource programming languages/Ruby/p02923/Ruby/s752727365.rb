N = gets.to_i
H = gets.split.map &:to_i
cnt = 0
ans = 0
(0..N-2).each{|i|
	if H[i] >= H[i+1]
		cnt = cnt + 1
	else
		ans = [ans, cnt].max
		cnt = 0
	end
}
p [ans, cnt].max