n = gets.to_i

a = (1..100).to_a

result = Array.new(70000, 0)

a.repeated_combination(3).each{ |x|
	f = x[0] ** 2 + x[1] ** 2 + x[2] ** 2 + x[0] * x[1] + x[1] * x[2] + x[2] * x[0]
	size = x.uniq.size
	if size == 1 then
		result[f] += 1
	elsif size == 2 then
		result[f] += 3
	else
		result[f] += 6
	end
}

(1..n).each{|x|
	puts result[x]
}
