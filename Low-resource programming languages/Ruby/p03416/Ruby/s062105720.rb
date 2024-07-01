a,b = gets.split.map &:to_i

count = 0

(a..b).each{ |i|
	is = i.to_s
	if is[0] == is[-1] && is[1] == is[-2] then
		count += 1
	end
}

puts count