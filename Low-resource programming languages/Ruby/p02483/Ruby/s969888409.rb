a = []
b = gets
a = b.split(" ")

if a[0] > a[1] then
	if a[1] > a[2] then
		print a[0]
		print " "
		print a[1]
		print " "
		print a[2]
	elsif a[0] > a[2]&&a[2] > a[1] then
		print a[0]
		print " "
		print a[2]
		print " "
		print a[1]
	else
		print a[2]
		print " "
		print a[0]
		print " "
		print a[1]
	end
elsif a[0]<a[1] then
	if a[0] > a[2] then
		print a[1]
		print " "
		print a[0]
		print " "
		print a[2]
	elsif a[1] > a[2]&&a[2] > a[0] then
		print a[1]
		print " "
		print a[2]
		print " "
		print a[0]
	else
		print a[2]
		print " "
		print a[1]
		print " "
		print a[0]
	end	
end