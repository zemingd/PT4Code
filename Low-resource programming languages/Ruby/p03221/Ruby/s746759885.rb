n,m=gets.chomp.split(" ").map(&:to_i)
py=[]
m.times do|i|
	py[i]=gets.chomp.split(" ").map(&:to_i)
end
id=[]
def Qsort(list,l,r)
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
			list[i],list[k]=list[k],list[i]
		end
	end
	if(list[l][1]>list[k][1])
		list[l],list[k]=list[k],list[l]
	end
	Qsort(list,l,k-1) if(l<k-1)
	Qsort(list,k+1,r) if(k+1<r)
	return list
end
table=py.dup
table=Qsort(table,0,m-1)
cnt_list=Array.new(m+1){1}
m.times do|i|
	id[py.index(table[i])]="#{table[i][0]}".rjust(6,"0")+"#{cnt_list[table[i][0]]}".rjust(6,"0")
	cnt_list[table[i][0]]+=1
end
id.each do|str|
	puts(str)
end