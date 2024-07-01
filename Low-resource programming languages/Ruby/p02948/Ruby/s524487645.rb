(N,M),*AB = $<.map{|ln| ln.split.map(&:to_i) }

g, *W = 0, *0...M,*[-1]*(100001-M)
D = lambda{|d|
	return W[d] == d ? d : W[d] = D[W[d]]
}
AB.sort_by{|*,b|-b}.each{|a,b|
	d = D[M-a]
	g, W[d] = g+b, d-1 if d != -1
}
p g
