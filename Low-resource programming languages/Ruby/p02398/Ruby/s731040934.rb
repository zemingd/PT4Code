def incLcm(a, b, c)
	cnt = 0
	a.upto(b){|i|
		if (c % i == 0)
			cnt += 1
		end
	}
	return cnt
end

input = gets
a, b, c = input.split(' ').map(&:to_i)

puts incLcm(a, b, c)