(N,M),*AB = $<.map{|ln| ln.split.map(&:to_i) }

g, *W = 0, *0..M
D = lambda{|d|
	return M < d ? M : W[d] == d ? d : W[d] = D[W[d]]
}
AB.sort_by{|*,b|-b}.each{|a,b|
	next if M == d = D[a-1]
	g, W[d] = g+b, d+1
}
p g
