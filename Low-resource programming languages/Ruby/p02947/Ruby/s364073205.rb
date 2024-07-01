n = gets.chomp.to_i
arr = Array.new(n).map{Array.new(26,0)}
n.times do |i|
	s = gets.chomp
	s.chars.each do |c|
		arr[i][c.ord - "a".ord] += 1
	end
end
cnt = 0
(n-1).times do |i|
	(i+1..n-1).each do |j|
		next if i == j
		cnt += 1 if arr[i] == arr[j]
	end
end
puts cnt

