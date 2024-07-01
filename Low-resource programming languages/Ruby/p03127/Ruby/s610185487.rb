n = gets &:to_i
as = gets.split.map &:to_i

start = as[0]

as[0..-1].each{ |x|
	start = start.gcd(x)
}

puts start
