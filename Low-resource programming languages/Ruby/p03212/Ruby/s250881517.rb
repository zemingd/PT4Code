n = gets.chomp
ans = 0

3.upto(n.size) do |i|
	[3, 5, 7].repeated_permutation(i) do |e|
		if e.uniq.size == 3
			ans += 1 if e.join("").to_i < n.to_i
		end
	end
end

puts ans