n,k=gets.split.map(&:to_i)
trees=n.times.map{gets.to_i}
trees.sort!
min=(n-k+1).times.map{|i|
  trees[i+k-1]-trees[i]
}.min
puts min