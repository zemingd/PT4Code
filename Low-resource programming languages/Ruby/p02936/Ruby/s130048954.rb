n,q = gets.chomp.split(" ").map(&:to_i)
parent = []
depth = Array.new(n+1,0)
value = Array.new(n+1,0)
(n-1).times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  parent[j] = i
  depth[j] = depth[i]+1
end
q.times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  value[i] += j
end
(2..n).sort_by{|e| depth[e]}.each do |i|
  value[i] += value[parent[i]]
end
puts value[1..n].join(" ")
