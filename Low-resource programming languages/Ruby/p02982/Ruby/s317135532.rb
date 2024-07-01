require'complex'
nd=gets.chomp.split(" ").map(&:to_i)
x=[]
nd[0].times do|i|
	x[i]=gets.chomp.split(" ").map(&:to_i)
end
cnt=0
(nd[0]-1).times do|i|
	for j in i+1..nd[0]-1
		res=0
		nd[1].times do|k|
			res+=(x[i][k]-x[j][k])**2
		end
		ans=Math.sqrt(res).floor
		cnt+=1 if(Math.sqrt(res).to_f==ans.to_f)
	end
end
p cnt