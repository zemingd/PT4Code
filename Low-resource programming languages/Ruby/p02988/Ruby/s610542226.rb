n=gets.to_i
p1=gets.chomp.split(" ").map(&:to_i)

count=0
for i in 1..n-2
	if((p1[i-1]<p1[i] and p1[i]<p1[i+1]) or (p1[i-1]>p1[i] and p1[i]>p1[i+1]))
		count+=1
	end
end
p count