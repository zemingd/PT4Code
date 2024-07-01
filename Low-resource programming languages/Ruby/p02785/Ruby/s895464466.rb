N,K,*H = $<.read.split.map(&:to_i)
p H.sort.take([0,N-K].max).inject(0,:+)
