n,k = gets.split(' ').map(&:to_i)

count = 0

until n < k
	n = (n / k)
	count += 1
end

puts (count+1)