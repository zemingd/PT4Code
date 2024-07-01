a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
d = ARGV[3].to_i

if(a + b < c + d)
	puts ("Right")
elsif(a + b > c + d)
	puts ("Left")
else
	puts ("Balanced")
end