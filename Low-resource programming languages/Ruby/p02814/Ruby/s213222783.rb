n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=a.inject{ |i,j| i.lcm(j)}
p l>m ? 0: (m+l-1)/l
