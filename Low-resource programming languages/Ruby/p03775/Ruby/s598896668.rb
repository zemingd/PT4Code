n = gets.to_i
prime = 2
tmp1 = n
tmp2 = 1
loop{
	if n % prime == 0
		break if tmp2 * prime > tmp1/prime
		tmp1 /= prime
		tmp2 *= prime
		n /= prime
	else
		prime += 1
	end 
}

puts tmp1.to_s.length


