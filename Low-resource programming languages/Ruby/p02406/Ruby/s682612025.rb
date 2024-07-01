def check_include3(n)
	until n == 0
		return true if n % 10 == 3
		n/=10
	end
	return false
end

n = gets.strip().to_i
for i in 1..n
	if i % 3 == 0
		print " #{i}"
	elsif check_include3(i)
		print " #{i}"
	end
end
puts ""
