n = gets.to_i
s = gets.split
flg = 3
for i in 0..n
	if(s[i] == "Y")then
		flg = 4
		break
	end
end
puts flg