n = gets.to_i
a = gets.split.map(&:to_i)
ans = 1
a.each do |i|
	ans *= i
	ans = "-1" if ans > 10**18
end
puts ans