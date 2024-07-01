def gcd(a, b)
	if b == 0 then
		return a
	end
	return gcd(b, a % b)
end

a, b = gets.chomp.split(" ").map(&:to_i)
d = gcd(a, b)
results = []
for i in 2..d do
	flag = true
	for j in results do
		if i % j == 0 then
			flag = false
			break
		end
	end
	if flag == false then
		next
	end
	if a % i == 0 && b % i == 0 then
		results.unshift(i)
	end
end
results.push(1)
print(results.length)
