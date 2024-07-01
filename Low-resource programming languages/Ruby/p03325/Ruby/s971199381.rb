def cnt(n)
	i = 0
	while n%2 < 1
		n = n / 2
		i += 1
	end
	return i
end
n = gets
nums = gets.chomp.split(" ").map(&:to_i)
sum = 0
nums.each do |num|
	sum+=cnt(num)
end
puts sum