n = gets.to_i
as = gets.split.map &:to_i

MOD= 10 ** 9 + 7

sum = 0

(0 ... as.size).to_a.combination(2).each{ |a,b|
	sum += (as[a] ^ as[b])
}

puts sum % MOD
