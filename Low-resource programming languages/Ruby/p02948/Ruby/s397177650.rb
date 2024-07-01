(N,M),*AB = $<.map{|ln| ln.split.map(&:to_i) }

g, *W = 0, *0...M,-1
D = lambda{|d|
	return W[d] == d ? d : W[d] = D[W[d]]
}
AB.sort_by!{|*,b|-b}.each{|a,b|
	d = D[M-a]
	if d != -1
		g += b
		W[d] = d-1
	end
}
p g
