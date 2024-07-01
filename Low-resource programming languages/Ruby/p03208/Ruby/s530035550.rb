n, k = gets.split.map(&:to_i)
trees = n.times.map{gets.to_i}
trees.sort!
res = 1000000000
for i in 0..(n-k) do
  selected = trees[i..(i+k-1)]
  #p selected
  dif = selected.max - selected.min
  if dif < res
    res = dif
  end
end
puts res