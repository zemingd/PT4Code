a,b,c=gets.split(' ').map(&:to_i)
a-=b
if(c-a<0)
	puts "0"
else
	puts c-a
end