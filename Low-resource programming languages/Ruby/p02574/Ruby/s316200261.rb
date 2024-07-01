def gcd(a, b)
	a, b = b, a if a > b
	return b if a <= 0
	b -= a
	gcd(b, a)
end

def lcm(a, b)
	a * b / gcd(a, b)
end

MOD = 1000000007

n = gets.to_i
a = gets.split.map &:to_i

lcmall = 1
gcdall = 0
mulall = 1

a.each do |x|
	lcmall = lcm(lcmall, x) % MOD
	gcdall = gcd(gcdall, x) % MOD
	mulall = mulall * x % MOD
end

if lcmall == mulall
	puts "pairwise coprime"
elsif gcdall == 1
	puts "setwise coprime"
else
	puts "not coprime"
end