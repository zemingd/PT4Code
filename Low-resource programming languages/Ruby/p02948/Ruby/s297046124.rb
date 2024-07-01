(N,M),*AB = $<.map{|ln| ln.split.map(&:to_i) }

g, *W = 0, *0...M,-1
D = lambda{|d|
	return M <= d ? -1 : W[d] == d ? d : W[d] = D[W[d]]
}
AB.sort_by{|*,b|-b}.each{|a,b|
	next if -1 == d = D[M-a]
	g, W[d] = g+b, d-1
}
p g
