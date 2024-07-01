N=gets.to_i
d=gets.split.map &:to_i
p [*0...N].combination(2).inject(0){|s,x|s+=d[x[0]]*d[x[1]]}