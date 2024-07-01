num = gets.chomp.split(" ").map(&:to_i)
edge = Hash.new{|hash,key| hash[key] = []}
value = Array.new(num[0]+1,0)
(num[0]-1).times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  edge[i] << j
end
num[1].times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  nodes = [i]
  until node = nodes.shift
    value[node] += j
    edge[node].each do |dst|
      nodes << dst
    end
  end
end
print("#{value[1]}")
(2..num[0]).each do |node|
  print(" #{value[node]}")
end
