n,m=gets.split(" ").map(&:to_i)
ab=[]
n.times do|i|
	ab[i]=gets.chomp.split(" ").map(&:to_i)
end
dp=Array.new(m+1){0}
dp[0]=0
def Qsort(list,l,r)
	i=l+1
	k=r
	while(i<k)
		while(list[i][1]>list[l][1] and i<r)
			i+=1
		end
		while(list[k][1]<=list[l][1] and k>l)
			k-=1
		end
		if(i<k)
			w=list[i]
			list[i]=list[k]
			list[k]=w
		end
	end
	if(list[l][1]<list[k][1])
		w=list[l]
		list[l]=list[k]
		list[k]=w
	end
	Qsort(list,l,k-1) if(l<k-1)
	Qsort(list,k+1,r) if(k+1<r)
	return list
end
ab=Qsort(ab,0,n-1)
sum=0
cnt=0
n.times do|i|
	if(cnt+ab[i][0]<=m)
		sum+=ab[i][1]
		cnt+=1
	end
end
p sum
