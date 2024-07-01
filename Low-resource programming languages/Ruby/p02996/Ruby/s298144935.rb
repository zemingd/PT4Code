n=gets.to_i
ab=[]
n.times do|i|
	ab[i]=gets.chomp.split(" ").map(&:to_i)
end
def Quick_sort(list,l,r)
	i=l+1
	k=r
	while(i<k)
		while(list[i][1]<list[l][1] and i<r)
			i+=1
		end
		while(list[k][1]>=list[l][1] and k>l)
			k-=1
		end
		if(i<k)
			w=list[i]
			list[i]=list[k]
			list[k]=w
		end
	end
	if(list[l][1]>list[k][1])
		w=list[l]
		list[l]=list[k]
		list[k]=w
	end
	Quick_sort(list,l,k-1) if(l<k-1)
	Quick_sort(list,k+1,r) if(k+1<r)
	return list
end
ab=Quick_sort(ab,0,n-1)
taskT=0
flag=false
n.times do|i|
	taskT+=ab[i][0]
	if(taskT>ab[i][1])
		flag=true
		break
	end
end
print(flag ? "No" : "Yes")