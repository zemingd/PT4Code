s = gets().strip!

n0 = 0
n1 = 1
r0 = 0
r1 = 0

(0 ... s.length).each{|i|
	si = s[i].to_i

	r0 += 1 if si != n0
	r1 += 1 if si != n1

	n0 = 1 - n0
	n1 = 1 - n1
}

puts [r0, r1].min
