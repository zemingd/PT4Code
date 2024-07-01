num = gets.split.map!{|item| item.to_i}

if (num[2] - num[4]) >= 0	 && (num[2] + num[4]) <= num[0] && (num[3] - num[4]) >= 0 && (num[3] + num[4]) <= num[1]	then
		print "Yes\n"

else
	print "No\n"
end