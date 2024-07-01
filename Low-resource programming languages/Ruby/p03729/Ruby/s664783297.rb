a,b,c=gets.chomp.split(" ")
a=a.split("")
b=b.split("")
c=c.split("")
if a[a.size-1]==b[0] and b[b.size-1]==c[0]
	puts "YES"
else
	puts "NO"
end	