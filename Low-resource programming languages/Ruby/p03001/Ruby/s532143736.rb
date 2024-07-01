W,H,x,y=gets.chomp.split(' ').map{|n| n.to_f}
print W*H/2
print " "
if(x==W/2.0&&y==H/2.0)
	puts "1"
else
	puts "0"
end

