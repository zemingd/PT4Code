num=STDIN.gets.chomp.split(/ /)
a=num[0].to_i
b=num[1].to_i
c=num[2].to_i

if a<b && b<c 
	print "Yes\n"
else
	print "No\n"
end