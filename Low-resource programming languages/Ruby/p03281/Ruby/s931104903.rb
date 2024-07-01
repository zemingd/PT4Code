def number_of_divisors(m)
	count = 1
	for i in 2..m/2
		if m%i == 0
			count += 1
		end
	end	
	if (m > 1)
		count += 1
	end
	return count
end

n = gets.chop.to_i

total_count = 0

for j in 1..n
	if j%2 == 1 && number_of_divisors(j) == 8
		total_count += 1
		puts j
	end
end

puts total_count.to_s