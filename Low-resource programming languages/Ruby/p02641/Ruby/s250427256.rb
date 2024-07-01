x,n,*P=$<.read.split.map &:to_i
p ([*0..101]-P).min_by{|y|(y-x).abs}