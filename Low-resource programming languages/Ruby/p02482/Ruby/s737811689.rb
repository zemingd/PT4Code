a = []
i = gets
a = i.split(" ")

if a[0]>a[1] then
	puts "a > b"
elsif a[0]==a[1] then
	puts "a == b"
elsif a[0]<a[1] then
	puts "a < b"
else
	puts "invalid value of a"
end