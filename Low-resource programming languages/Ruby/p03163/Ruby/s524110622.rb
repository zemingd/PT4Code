Item = Struct.new(:w, :v)

n, w = gets.split.map(&:to_i)
items = n.times.map {Item[*gets.split.map(&:to_i)]}

# dp[i][sum_w]
dp = (n+1).times.map {Array.new(w+1, 0)}
(1..n).each do |i|
	item = items[i-1]
	(1..w).each do |u|
		dp[i][u] = [
			u >= item.w ? dp[i-1][u-item.w] + item.v : 0,
			dp[i][u-1],
			dp[i-1][u]
		].max
	end
end

puts dp[n][w]
