
def GCD(m, n)
	return 0 if m == 0 || n == 0
	while m != 0 && n != 0
		if m > n then
			m %= n
		else
			n %= m
		end
	end
	return [m, n].max
end

def LCM(m, n)
	return 0 if m == 0 || n == 0
	return m * n / GCD(m, n)
end



n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i).sort
mod = arr[0]
1.upto(n-1) do |i|
	ngo = arr[i] % mod
	mod = ngo if ngo < mod && ngo > 0
end

puts mod

