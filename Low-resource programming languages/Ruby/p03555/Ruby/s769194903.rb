c1,d=gets.chomp.split(' ').map{|n| n}
c2,d=gets.chomp.split(' ').map{|n| n}

if(c1[0]==c2[2] && c1[1]==c2[1] && c1[2]==c2[0])
	puts "YES"
else
	puts "NO"
end
