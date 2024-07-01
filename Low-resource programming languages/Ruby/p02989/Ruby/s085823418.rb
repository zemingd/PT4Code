n,*d=gets(p).split.map &:to_i
p (1..d.sort!.max).count{|i|d.select{|x|x<i}.size==n/2}