n, q = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
g = Array.new(n).map{Array.new}
bfs = []
(n-1).times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    g[a-1] << b-1
    g[b-1] << a-1
end
q.times do
    pi, xi = gets.chomp.split(" ").map(&:to_i)
    ans[pi-1] += xi
end
flag = Array.new(n, false)
queue = [0]
while !queue.empty?
    v = queue.shift()
    flag[v] = true
    g[v].each do |e|
        next if flag[e]
        ans[e] += ans[v]
        queue.push(e)
    end
end
print ans.join(" ")