n = gets.to_i

h = gets.split(' ').map(&:to_i)

dp = Array.new(h.length,0)
dp[0] = 0
dp[1] = (h[1]-h[0]).abs
for i in 1..h.length-2
	#puts "#{i}, #{dp[i-1]}+#{(h[i-1]-h[i+1]).abs}, #{dp[i]}+#{(h[i]-h[i+1]).abs}"
	dp[i+1] = [dp[i-1]+(h[i-1]-h[i+1]).abs, dp[i]+(h[i]-h[i+1]).abs].min
end

puts dp[h.length-1]