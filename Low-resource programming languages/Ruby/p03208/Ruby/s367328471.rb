n,k=gets.split.map(&:to_i)
trees = n.times.map{gets.to_i}.sort
heightDiffMin=10**9
n.times do |index|
  break if ((index+k-1) == n)
  tempArray = trees[index..(index+k-1)]
  tempheightDiff = tempArray.max-tempArray.min
  heightDiffMin = tempheightDiff if tempheightDiff < heightDiffMin
end
puts heightDiffMin