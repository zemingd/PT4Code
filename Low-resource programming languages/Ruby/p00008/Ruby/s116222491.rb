def combi(n)
	ans = 0
	10.times{|i|
		10.times{|j|
			10.times{|k|
				10.times{|l|
					ans += 1 if i + j + k + l == n
				}
			}
		}
	}
	ans
end

while n = gets
	puts combi(n.to_i)
end