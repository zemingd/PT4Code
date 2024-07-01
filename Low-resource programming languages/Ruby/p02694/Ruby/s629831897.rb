x = gets.to_i

ans = 0
m = 100
interst = 0
loop{
	if m >= x then
		puts ans
		exit
	else
		ans += 1
		interst = (m/100).to_i
		m = m + interst
	end
}