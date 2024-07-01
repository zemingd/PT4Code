n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)

flag=true
n.times do|i|
	if (i==0)
		if(a[n-1]^a[1]!=a[0])
			flag=false
			break
		end
	elsif (i==n-1)
		if(a[n-2]^a[0]!=a[n-1])
			flag=false
			break
		end
	elsif (a[i-1]^a[i+1]!=a[i])
		flag=false
		break
	end
end
puts(flag ? "Yes" : "No")