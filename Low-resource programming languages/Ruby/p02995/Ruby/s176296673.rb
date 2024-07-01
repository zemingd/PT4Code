
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



a, b, c, d = gets.chomp.split.map(&:to_i)
e = LCM(c, d)

ac = (a.to_f / c).ceil * c
bc = (b.to_f / c).floor * c
ad = (a.to_f / d).ceil * d
bd = (b.to_f / d).floor * d
ae = (a.to_f / e).ceil * e 
be = (b.to_f / e).floor * e

#puts "ac:#{ac} bc:#{bc} ad:#{ad} bd:#{bd} ae:#{ae} be:#{be}"

cc = (bc - ac) / c + 1
dd = (bd - ad) / d + 1
ee = (be - ae) / e + 1

cc = 0 if ac > bc 
dd = 0 if ad > bd
ee = 0 if ae > be 

#puts "cc:#{cc} dd:#{dd} ee:#{ee}"
puts (b - a + 1) - (cc + dd - ee)
