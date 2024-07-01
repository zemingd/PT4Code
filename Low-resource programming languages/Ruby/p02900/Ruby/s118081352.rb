def gcd(a, b)
	if b == 0 then
		return a
	end
	return gcd(b, a % b)
end

a, b = gets.chomp.split(" ").map(&:to_i)
d = gcd(a, b)
results = [1]
for i in 2..d do
	if a % i == 0 && b % i == 0 then
		flag = true
		for j in results do
			if gcd(i, j) != 1 then
				flag = false
				break
			end
		end
		if flag == true then
			results.push(i)
		end
	end
end
print(results.length)