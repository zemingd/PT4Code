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

node_list = []
(0..(H-1)).each do |h|
    ss = gets.chomp
    h_base = h*W
    (0..(W-1)).each do |w|
        s = ss[w]
        node_list.push(h_base+w) if s != "#"
    end
end
edge_list = []
node_size=node_list.length
(0..(node_size-2)).each do |i|
    ((i+1)..(node_size-1)).each do |j|
        node_i=node_list[i]
        node_j=node_list[j]
        if (node_i+1==node_j && (node_i+1) % W != 0) || (node_i+W==node_j)
            edge_list.push([node_i,node_j,1])
            edge_list.push([node_j,node_i,1])    
        end
        break if node_i+W>=INF
    end
end

rets = warshall_floyd(node_list,edge_list).flatten
rets.delete(INF)
puts rets.max
