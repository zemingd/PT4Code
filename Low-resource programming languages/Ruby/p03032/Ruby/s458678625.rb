N, K, *V = $<.read.split.map(&:to_i)

p [*-K..0].product([*0..K]).select{|l,r| r-l <= [N,K].min }.map{|l,r|
	v = V.values_at(*l...0) + V[0...r]
	v.inject(0,:+) - v.min(K-v.size).select{|_|_<0}.inject(0,:+)
}.max
