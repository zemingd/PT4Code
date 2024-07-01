N, M = gets.split.map(&:to_i)
sw = [0] * -~N
M.times do |i|
	gets.split.map(&:to_i)[1..-1].each do |s|
		sw[s-1] |= 1 << i
	end
end
#p sw
#p b

pp =  gets.tr(" ",?_).reverse.to_i(2)
res = -(pp-1 >> 20)
1.upto(N) do |n|
	N.times.to_a.combination(n) do |x|
#		p [x, sw.values_at(*x),sw.values_at(*x).inject(:^)]
		res += 1 if sw.values_at(*x).inject(:^) == pp
	end
end
p res
