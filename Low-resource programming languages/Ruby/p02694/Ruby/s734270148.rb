x = gets.to_i

ans = 0
m = 100
loop{
	if m > x then
		puts ans
		exit
	else
		ans += 1
		m = (m * 1.01).to_i
		
	end
}