a, b, c = gets.split.map(&:to_i)
ans = 0
for i in a..b
	ans += 1 if c % i == 0 
end
puts ans
