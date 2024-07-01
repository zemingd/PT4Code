n = gets.to_i
l = gets.chomp.split(" ").map(&:to_i);

results = []
i = 0
while i < n
	j = i + 1
	while j < n
		k = j + 1
		while k < n
			if l[i] < l[j] + l[k] && l[j] < l[k] + l[i] && l[k] < l[i] + l[j] then
				ret = [l[i], l[j], l[k]].sort
				results.push(ret)
			end
			k = k + 1
		end
		j = j + 1
	end
	i = i + 1
end
print results.uniq.length