def count_low_elements(n, p)
	count = 0
	min = n + 1
	(0...n).each do |i|
		if p[i] < min
			count += 1
			min = p[i]
		end
	end
	count
end

n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
puts count_low_elements(n, p)
