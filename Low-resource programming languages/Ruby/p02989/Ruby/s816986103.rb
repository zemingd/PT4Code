n=gets.to_i
a=gets.split(" ").map{|e| e.to_i}.sort
i=0
j=0
ans=0
while j<=a.max do
	while i<n && a[i]<j
		i+=1
	end
	ans+=1 if i==n/2
	j+=1
end
p ans