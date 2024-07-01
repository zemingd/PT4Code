N,Q=gets.split.map &:to_i
G=(1...N).map{gets.split.map(&:to_i)}.sort_by(&:last)
v=[0]*N
Q.times{
	p,x=gets.split.map &:to_i
	v[p-1]+=x
}
1.upto(N-1){|i|
  v[i]+=v[G[i-1][0]-1]
}
puts v.join(" ")