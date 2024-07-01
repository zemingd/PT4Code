n, q = gets.split.map(&:to_i)

count = Array.new(n + 1, 0)
road = Array.new(n + 1) {[]}

(n-1).times do
    a, b = gets.split.map(&:to_i)
    road[a] << b
    road[b] << a
end

q.times do
    q, x = gets.split.map(&:to_i)
    count[q] += x
end

que = [[1, 0]]
while (now, pre = que.shift)
    road[now].each do |i|
        next if i == pre
        count[i] += count[now]
        que << [i, now]
    end
end

puts count[1..-1].join(" ")