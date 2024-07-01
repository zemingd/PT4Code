n = gets.to_i
l = gets.chomp.split(" ").map(&:to_i);

results = []
i = 0
while i < n
	j = i + 1
	while j < n
		k = j + 1
		while k < n
			if l[k] < l[i] + l[j] then
				if l[j] < l[k] + l[i] then
					if l[i] < l[j] + l[k] then
						ret = [l[i], l[j], l[k]].sort
						results.push(ret)
					else
						k = k + 1
						next
					end
				else
					k = k + 1
					next
				end
			else
				k = k + 1
				next
			end
			k = k + 1
		end
		j = j + 1
	end
	i = i + 1
end
print results.uniq.length