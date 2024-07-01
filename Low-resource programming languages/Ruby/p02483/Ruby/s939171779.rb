a = []
b = gets
a = b.split(" ")

if a[0] > a[1] then
	if a[1] > a[2] then
		print a[2]
		print " "
		print a[1]
		print " "
		print a[0]
		print "\n"
	elsif a[0] > a[2]&&a[2] > a[1] then
		print a[1]
		print " "
		print a[2]
		print " "
		print a[0]
		print "\n"
	else
		print a[1]
		print " "
		print a[0]
		print " "
		print a[2]
		print "\n"
	end
elsif a[0]<a[1] then
	if a[0] > a[2] then
		print a[2]
		print " "
		print a[0]
		print " "
		print a[1]
		print "\n"
	elsif a[1] > a[2]&&a[2] > a[0] then
		print a[0]
		print " "
		print a[2]
		print " "
		print a[1]
		print "\n"
	else
		print a[0]
		print " "
		print a[1]
		print " "
		print a[2]
		print "\n"
	end	
end