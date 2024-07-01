n,k=gets.split.map &:to_i
ar=(1..n).map{gets.split.map &:to_i}
p ar.sort.find{|a,b|k-=b;k<=0}[0]
