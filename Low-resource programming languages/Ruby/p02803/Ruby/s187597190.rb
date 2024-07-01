H,W=gets.chomp.split(" ").map(&:to_i)
N=H*W
INF=H*W
def warshall_floyd(node_list, edge_hash)
    d={}
    node_list.each do |n1|
        node_list.each do |n2|
            d[n1] ||= {}
            d[n1][n2] = edge_hash[n1][n2] || INF
        end
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
edge_hash = {}
s_pre = "#"*W
(0..(H-1)).each do |h|
    s = gets.chomp
    (0..(W-1)).each do |w|
        next if s[w] == "#"
        node = h*W+w
        node_list.push(node)
        edge_hash[node] = {}
        if s[w] == s_pre[w]
            edge_hash[node][node-W] = 1
            edge_hash[node-W][node] = 1
        end
        next if w==0
        if s[w] == s[w-1]
            edge_hash[node][node-1] = 1
            edge_hash[node-1][node] = 1
        end
    end
    s_pre = s
end

rets = warshall_floyd(node_list,edge_hash).flatten
ret = 0
(0..(node_list.length-2)).each do |i|
    (i..(node_list.length-1)).each do |j|        
        ret = [ret,rets[node_list[i]][node_list[j]]].max
    end
end
puts ret
