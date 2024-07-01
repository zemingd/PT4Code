x = gets.to_i
a = 0
for i in 1..1000
	if(i * i > x)then
		break
	else
		a = i * i
	end
end
puts a