n,k=gets.split.map &:to_i
n.times{a,b=gets.split;k-=b.to_i;p a.to_i if k<=0}