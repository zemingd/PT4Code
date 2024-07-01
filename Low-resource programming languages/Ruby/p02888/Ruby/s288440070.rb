N = gets.to_i
Ls = gets.split.map &:to_i

ll = Array.new(1000, 0)
Ls.each{ |x|
	ll[x - 1] += 1
}

sums = Array.new(1000, 0)

sum = 0

ll.reverse.each_with_index{ |l, i|
	sum += l
	sums[sums.size - i - 1] = sum
}

max = N * (N - 1) * (N - 2) / (3 * 2)

Lsuni = Ls.uniq

Lsuni.combination(2).each{ |a| max -= ll[a[0] - 1] * ll[a[1] - 1] * sums[[a[0] + a[1] - 1, 999].min] }

puts [max - ll.inject(0, :+) + Lsuni.size, 0].max
