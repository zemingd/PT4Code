def gcd(n, m)
	if n < m
		a = m
		b = n
	else
		a = n
		b = m
	end

	return (a % b == 0 ? b : gcd(b, a % b))
end



n = gets().to_i
an = gets().split(' ').map(&:to_i)
an.sort!

g_all = gcd(an[0], an[1])
g_tmp = [an[0], an[1]]

(2 ... n).each {|i|
	g_tmp.map!{|gt|
		gcd(gt, an[i])
	}

	if an[i] % g_all != 0
		g_tmp.push(g_all)
		g_all = gcd(g_all, an[i])
	end
}

puts (g_tmp + [g_all]).max
