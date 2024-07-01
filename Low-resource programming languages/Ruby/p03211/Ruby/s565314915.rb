s = gets.chomp.split("").map &:to_i

target = 753
result = []

s.each_cons(3).to_a.each{ |x|
	result << (target - (x[0] * 100 + x[1] * 10 + x[2])).abs
}

puts result.min
