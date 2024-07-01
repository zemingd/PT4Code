n = gets.to_i
s = gets.split
flg = "Three"
for i in 0..n
	if(s[i] == "Y")then
		flg = "Four"
		break
	end
end
puts flg