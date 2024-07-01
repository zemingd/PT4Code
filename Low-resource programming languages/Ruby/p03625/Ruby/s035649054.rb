n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
pair_num = 0
edges = []
arr.each.with_index do |edge,id|
  if arr[id] == arr[id+1]
    edges << edge
    pair_num += 1
    arr.delete_at(id+1)
  end
  if pair_num == 2
    break
  end
end
if edges.size < 2
  puts 0
else
  puts edges[0] * edges[1]
end