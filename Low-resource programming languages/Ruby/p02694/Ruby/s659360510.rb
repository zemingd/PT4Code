x = gets.to_i 
ans = 1
while 100 * (1.01 ** ans) < x
	ans += 1
end
puts ans