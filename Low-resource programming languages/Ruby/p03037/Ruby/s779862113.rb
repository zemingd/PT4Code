nm=gets.chomp.split(" ").map(&:to_i)
lr=[]
nm[1].times do|i|
	lr[i]=gets.chomp.split(" ").map(&:to_i)
end
min=0
max=999999999999
nm[1].times do|i|
	if(min<lr[i][0])
		min=lr[i][0]
	end
	if(max>lr[i][1])
		max=lr[i][1]
	end
end
puts max-min+1