n,m = gets.split.map &:to_i
hs = gets.split.map &:to_i

bs = Array.new(n).map{ Array.new }

m.times{
	a, b = gets.split.map &:to_i

	bs[a - 1] << hs[b - 1]
	bs[b - 1] << hs[a - 1]
}

count = 0

bs.each_with_index{ |x,i|
	if x.size == 0 || x.max < hs[i] then
		count += 1
	end
}

puts count