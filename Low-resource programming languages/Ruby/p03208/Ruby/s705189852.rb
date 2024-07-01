n,k=gets.split.map(&:to_i)
trees = n.times.map{gets.to_i}.sort
heightDiffs = []
(n-k+1).times do |index|
  heightDiffs << trees[index+k-1]-trees[index]
end
puts heightDiffs.min  	