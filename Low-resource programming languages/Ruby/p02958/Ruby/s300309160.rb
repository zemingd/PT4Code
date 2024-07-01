n,*s=gets(p).split.map &:to_i
puts (1..n).zip(s).count{|x,y|x!=y}>2?'NO':'YES'