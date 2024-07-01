n,q = gets.chomp.split(" ").map(&:to_i)
parent = Array.new(n+1,0)
childlen = Array.new(n+1){Array.new}
value = Array.new(n+1,0)
(n-1).times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  parent[j] = i
  childlen[i] << j
end
q.times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  value[i] += j
end
depth = [1]
#checked = Array.new(n+1,false)
while(child = depth.shift)
  childlen[child].each do |node|
    #unless checked[node]
      depth << node
      #checked[node] = true
    #end
  end
  value[child] += value[parent[child]]
end
puts value[1..n].join(" ")
