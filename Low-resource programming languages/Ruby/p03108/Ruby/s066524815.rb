n,m = gets.split.map &:to_i

#つながってる島(自分含む)
islands = Array.new(n + 1, nil)
(0...islands.size).each{ |i|
	islands[i] = {i => true}
}

as = []
bs = []

m.times{
	a, b = gets.split.map &:to_i
	
	as << a
	bs << b
}

#初期不便度
count = n * (n - 1) / 2

result = [count]

(m-1).downto(1) { |i|
	temp_a = islands[as[i]]
	temp_b = islands[bs[i]]

	if ! temp_a[bs[i]] then
		temp_merge = temp_a.merge(temp_b)
		temp_merge.keys.each{ |x|
			islands[x] = temp_merge
		}

		count -= temp_a.size * temp_b.size
	end

	result << count
}

puts result.reverse.join("\n")
