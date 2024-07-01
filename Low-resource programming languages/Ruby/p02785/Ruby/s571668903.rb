n,k=gets.split.map &:to_i
a=gets.split.map &:to_i
b=a.min([n-k,0].max)
p b.reduce(0,:+)