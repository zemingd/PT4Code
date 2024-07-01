n,m = gets.split.map &:to_i

#つながってる島の中で最も若い番号をさす
$islands = {}

def root(x)
	while $islands[x] != nil
		x = $islands[x]
	end
	
	x
end

#いくつつながっているか
$counts = Array.new(n + 1, nil)
(n + 1).times{ |i|
	$counts[i] = 1
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
	root_a = root(as[i])
	root_b = root(bs[i])

	temp_a_count = $counts[root_a]
	temp_b_count = $counts[root_b]

	if root_a != root_b then
		master = nil
		slave = nil
	
		if root_a > root_b then
			master = root_b
			slave = root_a
		else
			master = root_a
			slave = root_b
		end

		$islands[slave] = master
		$counts[master] += $counts[slave]

		count -= temp_a_count * temp_b_count
	end

	result << count
}

puts result.reverse.join("\n")
