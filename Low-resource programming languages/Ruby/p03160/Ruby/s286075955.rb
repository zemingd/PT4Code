n=gets.to_i;h=gets.split.map &:to_i
d=[0]*n
(1...n).each{|j|
  d[j]=d[j-1]+(h[j]-h[j-1]).abs
  d[j]=[d[j],d[j-2]+(h[j]-h[j-2]).abs].min if j>1
}
p d[n-1]