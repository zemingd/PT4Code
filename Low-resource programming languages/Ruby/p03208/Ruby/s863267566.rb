n, k = gets.split.map(&:to_i)
trees = n.times.map{ gets.to_i }.sort
min = trees[-1] - trees[0]
(n-k+1).times do |i|
  dif = trees[i+k-1] - trees[i]
  if dif < min
    min = dif
  end
end
puts min