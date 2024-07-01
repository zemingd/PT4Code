N, K = gets.chomp.split(" ").map(&:to_i)
p = 0 
dp = Array.new(K,K)
base = 1.0 / N
N.times do |i|
	n = N - i
	nk = n
	omote = 0
	while nk < K
		if dp[nk-1] == K
			nk = nk * 2
			omote += 1
		else
			omote += dp[nk-1]
			break
		end
	end
	dp[n-1] = omote
	p += base * (0.5**omote)
end

puts(p)