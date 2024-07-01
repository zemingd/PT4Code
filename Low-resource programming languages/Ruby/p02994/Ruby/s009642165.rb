n,l=gets.split.map &:to_i
a=(l..n+l-1).to_a
s=a.map{|i|i.abs}.sort
puts a.sum-s[0]
