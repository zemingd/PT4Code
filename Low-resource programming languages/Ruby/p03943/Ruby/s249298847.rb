a,b,c=gets.chomp.split(" ").map(&:to_i);
if a == b+c || b == a+c || c == a+b
	print "Yes"
else
	print "No"
end