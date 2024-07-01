s=gets.chomp.split("").map(&:to_i)
if((s[0]*10+s[1])>12 or (s[0]*10+s[1])==0)
	if((s[2]*10+s[3])>12 or (s[2]*10+s[3])==0)
		print "NA"
	else
		if(s[2]*10+s[3])<=12 and (s[2]*10+s[3])>=1
			print "YYMM"
		else
			print "AMBIGUOUS"
		end
	end
else
	if(s[2]*10+s[3])<=12 and (s[2]*10+s[3])>=1
		print"AMBIGUOUS"
	else
		print "MMYY"
	end
end