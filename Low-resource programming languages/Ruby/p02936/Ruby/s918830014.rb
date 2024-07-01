num = gets.chomp.split(" ").map(&:to_i)
parent = []
subtree = Hash.new{|hash,key| hash[key] = []}
value = Array.new(num[0]+1,0)
num[0].times do |i|
  subtree[i+1] << i+1
end
(num[0]-1).times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  subtree[i] << j
  parent[j] = i
  pivot = i
  while pivot = parent[pivot]
    subtree[pivot] << j
  end
end
num[1].times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  subtree[i].each do |node|
    value[node] += j
  end
end
print("#{value[1]}")
(2..num[0]).each do |node|
  print(" #{value[node]}")
end
