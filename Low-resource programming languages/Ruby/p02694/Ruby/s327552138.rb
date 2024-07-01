x = gets.to_i
ans = 0
now = 100
while now < x
	now += now / 100
	ans += 1
end
puts ans
