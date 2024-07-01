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

dp = Array.new(13, 0)
dp[0] = 1

table = Array.new(13) { Array.new(10, 0) }
(0..12).each{ |i|
	(0..9).each{ |j|
		table[i][j] = (i * 10 + j) % 13
	}
}

dp_next = []

(0 ... ss.size).each{ |i|
	dp_next = Array.new(13, 0)

	(0 ... dp.size).each { |j|
		if ss[i] == nil then
			(0..9).each{ |k|
				dp_next[table[j][k]] += dp[j]
			}
		else
			dp_next[table[j][ss[i]]] += dp[j]
		end
	}
	
	(0 ... dp_next.size).each { |j|
		if dp_next[j] > MOD then
			dp_next[j] = dp_next[j] % MOD
		end
	}
	
	dp = dp_next
}

puts dp[5] % MOD
