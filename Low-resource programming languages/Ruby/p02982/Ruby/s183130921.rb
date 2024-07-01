require'complex'
nd=gets.chomp.split(" ").map(&:to_i)
x=[]
nd[0].times do|i|
	x[i]=gets.chomp.split(" ").map(&:to_i)
end
cnt=0
(nd[0]-1).times do|i|
	for j in i..nd[0]-1
		res=0
		nd[1].times do|k|
			res+=(x[i][k]-x[j][k])**2
		end
		for k in 1..40
			if(res==k**2)
				cnt+=1
				break
			end
		end
	end
end
p cnt