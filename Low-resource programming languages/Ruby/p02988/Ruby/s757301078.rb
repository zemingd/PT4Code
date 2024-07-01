n = gets.to_i
p = gets.split.map(&:to_i)
cnt = 0
(1..n-2).each do |i|
	if (p[i-1] < p[i] and p[i] < p[i+1]) or (p[i+1] < p[i] and p[i] < p[i-1])
		cnt += 1
	end
end
puts cnt
