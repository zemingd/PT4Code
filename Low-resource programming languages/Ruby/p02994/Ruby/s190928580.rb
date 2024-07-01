n,l=gets.split.map &:to_i
a=(l..n+l-1).to_a
max=a[0]
a.each{|i|
max= [i.abs,max.abs].min==i.abs ?  i:max
}
puts a.sum-max
