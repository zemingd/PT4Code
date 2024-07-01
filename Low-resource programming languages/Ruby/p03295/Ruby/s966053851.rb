n,m = gets.split.map &:to_i
abs = []

m.times{
	a, b = gets.split.map &:to_i
	abs << [a,b]
}

abs.sort!{ |a, b| a[1] <=> b[1] }

count = 0
before = -1

abs.each{ |ab|
	if before > ab[0] && before <= ab[1] then
		next
	else
		count += 1
		before = ab[1]
	end
}

puts count
