n,k = gets.chomp.split(' ').map(&:to_i)
trees = []
n.times do
  trees << gets.chomp.to_i
end
trees.sort!
min = 10000000000
for i in 0..(n-k) do
  tmp = (trees[i] - trees[i+k-1]).abs
  if (tmp < min)
    min = tmp
  end
end
puts min