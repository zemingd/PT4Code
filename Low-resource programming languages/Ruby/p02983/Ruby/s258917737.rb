L,R=gets.chomp.split(' ').map{|n| n.to_i}
a = (L/2019+1)*2019
a1 = (L/2019+1)*2019+1
a2 = (L/2019+1)*2019+2
min = 2019
if(L%2019==0 || L<=a && a<=R)
	puts 0
	exit(0)
else
	# enough small
	for i in L..(R)
		for j in (i+1)..(R)
			min = [min,(i*j)%2019].min
		end
	end
end
puts min
