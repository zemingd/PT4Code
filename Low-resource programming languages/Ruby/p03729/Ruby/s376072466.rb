a,b,c=gets.chomp.split(" ")
a.split!("")
b.split!("")
c.split!("")
if a[s.size-1]==b[0] and b[b.size-1]==c[0]
	puts "YES"
else
	puts "NO"
end	