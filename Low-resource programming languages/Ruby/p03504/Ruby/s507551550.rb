n,c = gets.split.map(&:to_i)

tl = Array.new(c){ Array.new(2*(10**5)+1,0) }
n.times do
	s,t,ci = gets.split.map(&:to_i)
	tl[ci-1][s*2-1] += 1
	tl[ci-1][t*2] -= 1
end
max = 0
rec = 0
(2*(10**5)).times do |i|
	c.times do |j|
		if tl[j][i] == -1 && tl[j][i+1] == 1
			tl[j][i] = 0
			tl[j][i+1] = 0
		end
	end
end
(2*(10**5)+1).times do |i|
	c.times do |j|
		rec += tl[j][i]
	end
	max = rec if max < rec
end
puts max
