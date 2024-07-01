M = 10 ** 9 + 7
s = gets().strip()

num = 0
q_list = []
d = 1

s.each_char.reverse_each{|c|
#for i in range(len(s) - 1, -1, -1):
#	c = s[i]
	if c != "?"
		num = (num + c.to_i() * d) % 13
	else
		q_list.append(d)
	end
	d = (d * 10) % 13
}

counts = [0] * 13
counts[0] = 1
counts_save = [0] * 13
q_list.each{|d|
	13.times{|i|
		counts_save[i] = counts[i] % M
	}
	(1...10).each{|n|
		r = (d * n) % 13
		13.times{|m|
			counts[(r + m) % 13] += counts_save[m]
		}
	}
}

puts(counts[(13 + 5 - num) % 13] % M)
