ary = gets.split
a = ary[0].to_i
b = ary[1].to_i
c = ary[2].to_i
if a < b
	if b < c
		print a, " ", b, " ", c, "\n"
	elsif 
		if a < c
			print a, " ", c, " ", b, "\n"
		else
			print c, " ", a, " ", b, "\n"
		end
else b < a
	if c < b
		print c, " ", b, " ", a, "\n"
	elsif a < c
		print b, " ", a, " ", c, "\n"
	else
		print b, " ", c, " ", a, "\n"
	end
end