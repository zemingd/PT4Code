a = []
i = gets
a = i.split(" ")

if a[0]>a[1] then
	print a[0]
	print  " > "
	print a[1]
	print "\n"
elsif a[0]==a[1] then
	print a[0]
	print  " = "
	print a[1]
	print "\n"
elsif a[0]<a[1] then
	print a[0]
	print  " < "
	print a[1]
	print "\n"
else
	puts "invalid value of a"
end