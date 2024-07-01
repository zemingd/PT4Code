n,l=gets.split.map &:to_i
a=(l..n+l-1).to_a
max=a[0].abs
a.each{|i|
max=[i.abs,max].min
}
puts a.sum-max
