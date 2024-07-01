def function(n, a)
	i = 1
	count = 0
	a.each do |block|
		if (block == i)
			i += 1
		else
			count += 1
		end
	end
	i == 1 ? -1 : count
end

n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
puts function(n, a)
