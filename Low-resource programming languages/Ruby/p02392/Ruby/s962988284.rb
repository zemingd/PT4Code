a,b,c =gets.chomp.split(' ').map{|x|x.to_i}
if a<b &&  b<c 
	puts "yes"
else
	puts "no"
end