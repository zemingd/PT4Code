n = gets.to_i
prime = 1
tmp1 = n
tmp2 = 1
loop{
	if n%prime == 0
		tmp1 = n/prime
		tmp2 = prime
		break if tmp1.to_s.length <= tmp2.to_s.length
	end
	prime += 1
}

puts tmp2.to_s.length


