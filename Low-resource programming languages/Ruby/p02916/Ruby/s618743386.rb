n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)
b=gets.chomp.split(" ").map(&:to_i)
c=gets.chomp.split(" ").map(&:to_i)
res=0
(a.size-1).times do|i|
	res+=b[a[i]-1]
	if(a[i]+1==a[i+1])	
		res+=c[a[i]-1]
	end
end
res+=b[a[n-1]-1]
puts res