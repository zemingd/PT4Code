n, k = gets.split.map(&:to_i)
trees = n.times.map{gets.to_i}
trees.sort!
res = 1000000000
for i in 0..(n-k) do
  if trees[i+k-1] - [i] < res
    res = trees[i+k-1] - trees[i]
  end
end
puts res