n = gets.to_i
w = []
flg=1
for i in 0...n
	w[i] = gets
end
for i in 0...n
	if(i < n-1)then
		if(w[i][-2] != w[i + 1][0])then
			flg = 0
		end
	end
	for j in 0...i
		if(w[i] == w[j])then
			flg = 0
		end
	end
end

if(flg == 0)then
	puts "No"
else
	puts "Yes"
end 
