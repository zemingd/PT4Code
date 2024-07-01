a,b,c,d = gets.chomp.split(" ").map(&:to_i)

if (a-c).abs <= d
	print "Yes"
else
	if (a-b).abs <= d && (b-c).abs <= d
		print "Yes"
	else
		print "No"
	end
end
