n=gets.to_i
x=gets.split.map(&:to_i)
xx=x.sort
x1=xx[n/2-1]
x2=xx[n/2]
n.times do |i|
  p x[i]<x2 ? x2 : x1
end
