a,b,c,d=gets.chomp.split(' ').map{|n| n.to_i}

if(a + b < c + d)
	puts ("Right")
elsif(a + b > c + d)
	puts ("Left")
else
	puts ("Balanced")
end