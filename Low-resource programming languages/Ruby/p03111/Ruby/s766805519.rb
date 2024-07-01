n, a, b, c = gets.split.map &:to_i

l = []

n.times{
	l << gets.to_i
}

x = [0, 1, 2, nil]

d = x.repeated_permutation(l.size)

min_count = 100000000000000000000

d.each{ |x|
	count = 0

	sum = Array.new(3, 0)

	x.each_with_index{ |index, i|
		if index != nil then
			if sum[index] != 0 then
				count += 10
			end
			
			sum[index] += l[i]
		end
	}
	
	if sum[0] == 0 || sum[1] == 0 || sum[2] == 0 then
		next
	end
	
	count += (sum[0] - a).abs + (sum[1] - b).abs + (sum[2] - c).abs
	
	if count < min_count then
		min_count=  count
	end
}

puts min_count