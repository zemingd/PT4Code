H,W=gets.chomp.split(" ").map(&:to_i)
N=H*W
INF=H*W
def warshall_floyd(node_list, edge_list)
    d = Array.new(N) { Array.new(N,INF) }
    edge_list.each do |u, v, c|
        d[u][v] = c
    end
  
    node_list.each do |i|
        node_list.each do |j|
            node_list.each do |k|
                d[j][k] = [d[j][k], d[j][i] + d[i][k]].min
            end
        end
    end
    d
end
  
s = ""
H.times do
    s += gets.chomp
end
node_list = s.split("").map.with_index{|c, i|
    c == "#" ? INF : i
}
node_list.delete(INF)
edge_list = []
node_list.each do |i|
    neighbors = []
    neighbors.push(i+W) if i+W<INF
    neighbors.push(i+1) if i % W != W-1
    neighbors.each do |j|
        edge_list.push([i,j,1])
        edge_list.push([j,i,1])
    end
end

rets = warshall_floyd(node_list,edge_list).flatten
rets.delete(INF)
puts rets.max
