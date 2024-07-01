n = gets.to_i

road = Array.new(n+1){[]}
pre = Array.new(n+1, 0)
ans = Array.new(n+1, 0)

(n-1).times do
    u, v, w = gets.split.map(&:to_i)
    road[u] << [v, w]
    road[v] << [u, w]
end

que = [[1, 0]]
while now = que.shift
    i, w = now
    ans[i] = ans[pre[i]] ^ (w % 2)

    road[i].each do |ni, nw|
        next if ni == pre[i]
        pre[ni] = i
        que << [ni, nw]
    end
end

puts ans[1..-1]