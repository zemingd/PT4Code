num = gets.to_i
arr = gets.split.map(&:to_i)
dp = Array.new(num, Float::INFINITY)
dp[0] = 0

(num-1).times do |i|
	dp[i+1] = [(arr[i] - arr[i+1]).abs + dp[i], dp[i+1]].min
	if dp[i+2]
		dp[i+2] = [(arr[i] - arr[i+2]).abs + dp[i], dp[i+2]].min
	end
end

p dp[-1]