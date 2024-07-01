s = gets
t = gets
flg = 0
for i in 0..s.length
	if(s == t)then
		flg = 1
		break
	end
	s << s[-2]
	s.slice!(0)
end
if(flg == 1)then
	puts "Yes"
else
	puts "No"
end
