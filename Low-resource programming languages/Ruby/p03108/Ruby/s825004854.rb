ISLANDS, BRIDGES = gets.split(" ").map &:to_i
FIRST = ISLANDS*(ISLANDS-1) / 2

inputs = (0...BRIDGES).map do
  gets.split(" ").map &:to_i
end

i_to_cluster = {}
cluster_to_i = {}
(1..ISLANDS).each { |is| i_to_cluster[is] = is; cluster_to_i[is] = [is] }
inputs.reverse!

@score = FIRST
res = inputs.map do |inp|
  from, to = inp

  clus_to_remove = i_to_cluster[to]
  @score = @score - cluster_to_i[i_to_cluster[to]].size*cluster_to_i[i_to_cluster[from]].size
  if cluster_to_i[i_to_cluster[from]].size == ISLANDS
    0
  else
    cluster_to_i[i_to_cluster[from]] = cluster_to_i[i_to_cluster[from]] + cluster_to_i[clus_to_remove]
    cluster_to_i[clus_to_remove].each do |i_in_clus|
      i_to_cluster[i_in_clus] = i_to_cluster[from]
    end
    cluster_to_i.delete clus_to_remove
    @score
  end
end

res.reverse!.slice!(0, 1)
puts res
puts FIRST
