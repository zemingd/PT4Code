N,M=gets.split(" ").map(&:to_i)
x=gets.split(" ").map(&:to_i)
if N>=M
	puts 0
else
	x=x.sort
	d=Array.new(M-1,0)
	for i in 0..M-2
		d[i]=x[i+1]-x[i]
	end
	d=d.sort
	sum=x[M-1]-x[0]
	for i in 0..N-2
		sum-=d[M-2-i]
	end
	puts sum
end