n, k = gets.chomp.split.map(&:to_i)
al = gets.chomp.split.map(&:to_i)

(n-k).times do |i|
	puts (al[i] < al[i+k]) ? "Yes" : "No"
end
