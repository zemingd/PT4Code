n, k= gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)

dp = Array.new(h.length,1000000000)
dp[0] = 0
for i in 1..h.length-1
	j = 0
	while i-j-1>=0 && j < k do
		dp[i] = [dp[i], dp[i-j-1]+(h[i-j-1]-h[i]).abs].min
		
	j += 1
	end
end

puts dp[h.length-1]