x = gets.to_i

def fact_five? n
	flag = false
	n = n.abs
	res = 0
	(0..n).each do |i|
		fact = i ** 5
		if fact == n
			flag = true
			res = i
		end
		break if fact > n
	end
	flag ? res : false
end

a = -1
ans_flag = false
while !ans_flag
	a += 1
	temp = x - a ** 5
	res = fact_five?(temp)
	if res
		if temp > 0
			b = -res
		else
			b = res
		end
		ans_flag = true
	end
end

puts [a,b].join(" ")