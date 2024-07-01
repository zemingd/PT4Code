x = gets.chomp.to_i
#a, b = gets.chomp.split(" ").map{|e|e.to_i}

ans = 0
m = 100
loop do
	m = (m*1.01).to_i
	ans += 1
	if m>=x then break end
end

print(ans)