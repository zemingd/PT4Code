def gcd(a, b)
	b == 0 ? a: gcd(b, a % b)
end

def pd(n)
	results = []
	i = 2
	while i * i <= n
		if n % i == 0 then
			n = n.div(i)
			results.push(i)
		else
			i = i + 1
		end
	end
	if n != 1 then
		results.push(n)
	end
	return results
end

a, b = gets.chomp.split(" ").map(&:to_i)
d = gcd(a, b)
results = pd(d)
p results.uniq.length + 1
