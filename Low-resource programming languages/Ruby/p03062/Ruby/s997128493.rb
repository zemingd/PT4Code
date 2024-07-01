n = gets().to_i
an = gets().split(' ').map(&:to_i)

sum = 0
min = 10 ** 9
minus = 0

an.each {|ai|
	sum += ai.abs
	min = ai.abs if min > ai.abs
	minus += 1 if ai < 0
}

puts ((minus & 1) == 0 ? sum : sum - min * 2)
