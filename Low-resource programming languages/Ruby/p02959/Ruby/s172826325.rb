n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)
b=gets.chomp.split(" ").map(&:to_i)

msum=a.sum

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
puts(msum-a.sum)