n = gets.to_i
as = gets.split.map &:to_i
q = gets.to_i

bs = []
cs = []

q.times{
	b, c = gets.split.map &:to_i
	bs << b
	cs << c
}

sum = as.sum

as_map = Hash[as.group_by(&:itself).map {|k, v| [k, v.size] }]

q.times{ |i|
	count = as_map[bs[i]]
	
	if count != nil then
		as_map[bs[i]] = 0
		if as_map[cs[i]] == nil then
			as_map[cs[i]] = count
		else
			as_map[cs[i]] += count
		end

		sum += count * (cs[i] - bs[i])
	end
	
	puts sum
}
