A,B=gets.chomp.split(' ').map{|n| n.to_i}
if(A*B%2==1&&A*B<=3)
	puts "Yes"
else
	puts "No"
end
