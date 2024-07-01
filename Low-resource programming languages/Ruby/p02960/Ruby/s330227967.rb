MOD = 10**9 + 7

s = gets.chomp.split('')

ss = []
s.each{ |x|
	if x == '?' then
		ss << nil
	else
		ss << x.to_i
	end
}

dp = Array.new(ss.size + 1) { Array.new(13, 0) }
dp[0][0] = 1

table = Array.new(13) { Array.new(10, 0) }
(0..12).each{ |i|
	(0..9).each{ |j|
		table[i][j] = (i * 10 + j) % 13
	}
}

(0 ... ss.size).each{ |i|
	(0 ... dp[i].size).each { |j|
		if ss[i] == nil then
			(0..9).each{ |k|
				dp[i + 1][table[j][k]] += dp[i][j]
			}
		else
			dp[i + 1][table[j][ss[i]]] += dp[i][j]
		end
	}
	
	(0 ... dp[i].size).each { |j|
		if dp[i][j] > MOD then
			dp[i][j] = dp[i][j] % MOD
		end
	}
}

puts dp[-1][5] % MOD
