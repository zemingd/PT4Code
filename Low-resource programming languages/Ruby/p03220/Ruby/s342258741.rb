N,_=gets.chomp.split(' ').map{|n| n.to_i}
T,A=gets.chomp.split(' ').map{|n| n.to_i}
H=gets.chomp.split(' ').map{|n| n.to_i}

min = 999999999999
imin = -1
for i in 0..(H.size-1)
	h = H[i]
	tmp = (A-(T-h*0.006)).abs
	if(min > tmp)
		min = tmp
		imin = i+1
	end
end
puts imin
