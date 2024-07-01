n = gets.to_i
a = n.times.map{gets.to_i}
cnt = 1
m = a[0]
while m != 2 do
	m = a[m-1]
	cnt += 1
	if cnt > n then
		cnt = -1
		break
	end
end
puts cnt