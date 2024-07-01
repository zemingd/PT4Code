n = gets.to_i
edge = Array.new(n+1) {[]}

(n-1).times do
    u, v, w = gets.split.map(&:to_i)
    edge[u] << [v, w]
    edge[v] << [u, w]
end

a = Array.new(n+1)
a[1] = 0
que = [1]

while now = que.shift
    edge[now].each do |v, w|
        next if a[v]
        a[v] = w.odd? ? a[now] ^ 1 : a[now]
        que << v
    end
end

puts a[1..-1]
