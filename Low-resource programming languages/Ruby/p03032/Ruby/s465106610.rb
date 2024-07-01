N, K, *V = $<.read.split.map(&:to_i)

V[K,N-K-K] = [] if 0 < N-K-K
p [*-K..0].product([*0..K]).select{|l,r| r-l <= K }.map{|l,r|
	v = V.values_at(*l...0) + V[0...r]
	v.inject(0,:+) - v.min(K-v.size).select{|_|_<0}.inject(0,:+)
}.max
