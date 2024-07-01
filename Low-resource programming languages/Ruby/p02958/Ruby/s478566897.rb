n=gets.to_i
p=gets.chomp.split(" ").map(&:to_i)
cnt=0
n.times do|i|
	if(p[i]!=(i+1))
		if(cnt==0)
			idx=p.index(i+1)
			w=p[i]
			p[i]=p[idx]
			p[idx]=w
			cnt+=1
		else
			cnt+=1
			break
		end
	end
end
if(cnt<=1)
	puts("YES")
else
	puts("NO")
end