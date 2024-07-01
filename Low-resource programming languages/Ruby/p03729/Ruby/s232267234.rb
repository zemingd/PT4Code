a = gets.chomp.split
b = a[0]
c = b[-1]
d = a[1]
e = d[0]
f = d[-1]
g = a[2]
h = g[0]
if c == e && f == h
	print "YES"
else
	puts "NO"
end