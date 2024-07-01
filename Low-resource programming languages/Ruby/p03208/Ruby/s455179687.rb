n,k,*h=gets(p).split.map &:to_i
p h.combination(k).map{|x|x.max-x.min}.min