N,K=gets.split(" ").map(&:to_i)
h=[]
N.times{
	h<<gets.to_i
}
h=h.sort
min=1000000000
for i in 0..N-K
	dif=h[i+K-1]-h[i]
	if dif<min
		min=dif
	end
end
puts min