a = gets
b = a.split()
x = b[0].to_i
y = b[1].to_i
if x > y then
	print "a > b\n"
elsif x < y then
	print "a < b\n"
else
	print"a == b\n"
end