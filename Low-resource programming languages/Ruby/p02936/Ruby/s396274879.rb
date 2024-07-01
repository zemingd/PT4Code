n, q = gets.chomp.split.map &:to_i

node = {}

(n-1).times{
	a, b = gets.chomp.split.map &:to_i

	if node[a] then
		node[a] << b
	else
		node[a] = [b]
	end
}

count = {}

q.times{
	p, x = gets.chomp.split.map &:to_i

	if count[p] == nil then
		count[p] = x
	else
		count[p] += x
	end
}

tmp = {}
next_tmp = {1 => 0}
result = {}

while next_tmp.keys.size > 0
	tmp = next_tmp
	next_tmp = {}
	tmp.each { |k, v|
		result[k] = v + (count[k] ? count[k] : 0)
		if node[k] then
			node[k].each{ |s|
				next_tmp[s] = result[k]
			}
		end
	}
end

puts(result.values_at(*(1..n).to_a).join(" "))