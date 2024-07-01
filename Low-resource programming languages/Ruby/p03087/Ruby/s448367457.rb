$dp = []

def calc(s, n)
	return 0 if n == 0 || n == 1
	add = (s[0..n-1][-2..-1] == "AC") ? 1 : 0
	$dp[n] = calc(s, n-1) + add
end

def test
	n, q = gets.chomp.split(" ").map(&:to_i)
	s = gets.chomp
	$dp = Array.new(n+1)
	$dp[0] = 0
	$dp[1] = 0
	calc(s, n)
	# p $dp
	q.times do
		l, r = gets.chomp.split(" ").map(&:to_i)
		puts $dp[r] - $dp[l]
	end
end

test
