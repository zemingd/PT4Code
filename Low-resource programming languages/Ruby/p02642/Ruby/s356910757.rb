gets
a = gets.split.map(&:to_i).sort
ans = 0
i = 0
while i < a.size - 1
	if a[i] == nil
		i += 1
		next
	end
	n = a[i]
	if a[i + 1] == n
		a[i] = nil
	end
	j = i + 1
	while j < a.size
		if a[j] == nil
			j += 1
			next
		end
		if a[j] % n == 0
			a[j] = nil
		end
		j += 1
	end
	i += 1
end
puts a.count{|i| i != nil}