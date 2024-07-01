n, m = gets.split.map &:to_i

like = Array.new(m, 0)

n.times{
	as = (gets.split.map &:to_i)[1..-1]
	as.each{ |a|
		like[a-1] += 1
	}
}

puts like.select{ |x| x == n}.size
