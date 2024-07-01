MOD = 10**9 + 7

ss = gets.chomp.split('')

dp = Array.new(ss.size + 1) { Array.new(13, 0) }
dp[0][0] = 1

(0 ... ss.size).each{ |i|
	(0 ... dp[i].size).each { |j|
		if ss[i] == '?' then
			(0..9).each{ |k|
				dp[i + 1][(j * 10 + k) % 13] += dp[i][j]
			}
		else
			dp[i + 1][(j * 10 + ss[i].to_i) % 13] += dp[i][j]
		end
	}
}

puts dp[-1][5] % MOD
