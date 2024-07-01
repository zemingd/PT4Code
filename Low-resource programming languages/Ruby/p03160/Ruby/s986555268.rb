n = gets.to_i
hs = gets.split.map &:to_i

cost = Array.new(n + 1, Float::INFINITY)

cost[0] = 0
cost[1] =(hs[0] - hs[1]).abs

(2...n).each{ |i|
	this1 = cost[i - 2] + (hs[i] - hs[i - 2]).abs
	this2 = cost[i - 1] + (hs[i] - hs[i - 1]).abs
	
	if cost[i] > this1 then
		cost[i] = this1
	end

	if cost[i] > this2 then
		cost[i] = this2
	end
}

puts cost[n-1]