n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)

ans = 1
as.each do |a|
	ans *= a
end

if ans > 10**18
  ans = -1
end

puts ans