N, K = gets.split.map &:to_i
A = gets.split.map &:to_i

ans = 0
63.downto(0){|i|
	b = 2**i
	next if ans + b > K
	cnt = A.count{|a| a[i] != 0 }
	ans += b if cnt < N/2.0
}
p A.map{|a| a^ans }.inject:+
