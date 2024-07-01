ISLANDS, BRIDGES = gets.split(" ").map &:to_i

inputs = (0...BRIDGES).map do
  gets.split(" ").map &:to_i
end

i_to_cluster = {}
cluster_to_i = {}
(1..ISLANDS).each { |is| i_to_cluster[is] = is; cluster_to_i[is] = [is] }
inputs.reverse!

res = inputs.map do |inp|
  from, to = inp

  # p [from, to]
  # p i_to_cluster
  # p cluster_to_i

  clus_to_remove = i_to_cluster[to]

  if cluster_to_i[i_to_cluster[from]].size == ISLANDS
    0
  else
    cluster_to_i[i_to_cluster[from]] = cluster_to_i[i_to_cluster[from]] + cluster_to_i[clus_to_remove]
    cluster_to_i[clus_to_remove].each do |i_in_clus|
      i_to_cluster[i_in_clus] = i_to_cluster[from]
    end
    cluster_to_i.delete clus_to_remove
    
    arr = cluster_to_i.values
    sum = 0
    arr.each_with_index do |v, i|
      ((i+1)...arr.size).each do |j|
        sum += (v.size)*(arr[j].size)
      end
    end
    sum
  end
end

res.reverse!.slice!(0, 1)
puts res
puts ISLANDS*(ISLANDS-1) / 2
