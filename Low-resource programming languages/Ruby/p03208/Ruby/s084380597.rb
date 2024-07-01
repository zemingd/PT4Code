n, k = gets.split.map &:to_i
trees = []
 
n.times do
  trees << gets.to_i
end
 
trees.sort!
ans = 1E9
 
for i in 0 .. n - k
  min = trees[i + k - 1] - trees[i]
  ans = [min, ans].min
end
 
puts ans