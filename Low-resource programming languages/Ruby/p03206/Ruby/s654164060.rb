n, k = gets.chomp.split.map(&:to_i)
tree = []
n.times do 
  tree << gets.chomp.to_i
end
tree.sort!
min = 1000000000
(n-k+1).times do |i|
  min = [min, (tree[i]-tree[i+k-1]).abs].min
end

puts min
