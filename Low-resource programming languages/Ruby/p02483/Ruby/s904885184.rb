str=gets.chomp.split(" ")
a=str[0].to_i
b=str[1].to_i
c=str[2].to_i
if(a>b)
	d=a
	a=b
	b=d
end
if(a>c)
	d=a
	a=c
	c=d
end
if(b>c)
	d=b
	b=c
	c=d
end
puts "#{a} #{b} #{c}"