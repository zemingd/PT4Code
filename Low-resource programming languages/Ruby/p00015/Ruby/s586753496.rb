num = gets.to_i
while num > 0
	num1 = gets.to_i
	num2 = gets.to_i
	ans = num2+num1
	if ans >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000 then
		puts "overflow"
	else
		puts ans
	end
	num = num - 1
end