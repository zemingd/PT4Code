n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = Array.new(n,0)
as.each do |a|
	ans[a-1] += 1
end

puts ans