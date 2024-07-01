n=gets.to_i
h=gets.chomp.split(" ").map(&:to_i)
cnt=0
max=-999999
(n-1).times do|i|
	if(h[i]>=h[i+1])
		cnt+=1
	else
		max=cnt if(max<cnt)	
		cnt=0
	end
end
max=cnt if(max<cnt)
puts max