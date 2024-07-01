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
edge_list = []
s_pre = "#"*W
(0..(H-1)).each do |h|
    s = gets.chomp
    (0..(W-1)).each do |w|
        next if s[w] == "#"
        node = h*W+w
        node_list.push(node)
        if s[w] == s_pre[w]
            edge_list.push([node,node-W,1])
            edge_list.push([node-W,node,1])
        end
        next if w==0
        if s[w] == s[w-1]
            edge_list.push([node,node-1,1])
            edge_list.push([node-1,node,1])
        end
    end
    s_pre = s
end

rets = warshall_floyd(node_list,edge_list).flatten
rets.delete(INF)
puts rets.max
