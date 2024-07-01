N = gets.to_i
a=Array.new(N)
a[(0..N-1)]=gets.split.map(&:to_i)
k=0

for i in 0..N-1 do
	n=a[i]
	m=0
	
	for j in 0..N-1 do
		if a[j]>=n-1 && a[j]<=n+1 then
			m += 1
			
		end
	end
	
	if k <= m then
		k = m
	end	
		
end
		
puts k

