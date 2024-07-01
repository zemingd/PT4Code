
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

a, v = gets.chomp.split.map(&:to_i)
b, w = gets.chomp.split.map(&:to_i)
t = gets.chomp.to_i

if v <= w then
	puts "NO"
	exit
end

kyori = v - w
puts (a-b).abs / kyori <= t  ? "YES" : "NO"
	

