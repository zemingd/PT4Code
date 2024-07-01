n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)
b=gets.chomp.split(" ").map(&:to_i)
msum=0
a.each do|i|
	msum+=i
end
n.times do|i|
	if(a[i]>b[i])
		a[i]-=b[i]
		b[i]=0
	else
		b[i]-=a[i]
		a[i]=0
		if(i!=n and a[i+1]>b[i])
			a[i+1]-=b[i]
		else
			a[i+1]=0
		end
	end
end
nsum=0
a.each do|i|
	nsum+=i
end
print(msum-nsum)