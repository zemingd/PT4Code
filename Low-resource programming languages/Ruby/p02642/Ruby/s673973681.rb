gets
a = gets.split.map(&:to_i).sort
ans = 0
i = 0
while i < a.size - 1
	n = a[i]
	flag = a[i + 1] == a[i]
	j = i + 1
	while j < a.size
		if a[j] % a[i] == 0
			a.delete_at(j)
		else
			j += 1
		end
	end
	if flag
		a.delete_at(i)
	else
		i += 1
	end
end
puts a.size