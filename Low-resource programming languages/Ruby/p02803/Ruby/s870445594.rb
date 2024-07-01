H,W=gets.chomp.split(" ").map(&:to_i)
N=H*W

node_list = []
edge_hash = {}
s_pre = "#"*W
(0..(H-1)).each do |h|
    s = gets.chomp
    (0..(W-1)).each do |w|
        next if s[w] == "#"
        node = h*W+w
        edge_hash[node] = []
        node_list.push(node)
        if s[w] == s_pre[w]
            edge_hash[node].push(node-W)
            edge_hash[node-W].push(node)
        end
        next if w==0
        if s[w] == s[w-1]
            edge_hash[node].push(node-1)
            edge_hash[node-1].push(node)
        end
    end
    s_pre = s
end

ret = 0
node_length = node_list.length
node_list.each do |start_node|
    nodes = [start_node]
    visited = {}
    visited[start_node] = 1
    turn = 0
    while node_length != visited.length
        next_nodes = []
        nodes.each do |n|
            edge_hash[n].each do |neighbor|
                next_nodes.push(neighbor) if visited[neighbor] == nil
                visited[neighbor] = 1
            end
        end
        turn += 1
        nodes = next_nodes
    end
    ret = [ret,turn].max
end
puts ret
