n=gets.to_i
x=gets.split.map(&:to_i)
xx=x.sort
x1=xx[n/2-1]
x2=xx[n/2]
puts n.times.map {|i| x[i]<x2 ? x2 : x1}
