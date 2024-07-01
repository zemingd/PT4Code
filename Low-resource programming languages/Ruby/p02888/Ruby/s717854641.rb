n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i).sort.reverse
ans = 0

(n-2).times do |i|
	j = i + 1
	k = n - 1
	while j < k
		if ary[i] < ary[j] + ary[k]
			ans += k - j
			j += 1
		else
			k -= 1
		end
	end
end

puts ans