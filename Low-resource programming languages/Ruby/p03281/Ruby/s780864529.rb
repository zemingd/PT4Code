n = gets.to_i

ans = 0
count = 0

(1..n).each do |i|
	if i.odd?
		(1..i).each do |j|
		if (i % j) == 0
			count += 1
			end
		end
	end
	if count == 8
		ans += 1
	end
	count = 0
end
puts ans