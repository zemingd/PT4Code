N,K,*H = $<.read.split.map &:to_i
p H.sort[0...-K].inject(0,:+)