n, m = gets.chomp.split.map(&:to_i)
bridges = []
m.times{bridges << gets.chomp.split.map(&:to_i)}

max = n * (n - 1) / 2
result = [max]
parent = []
1.upto(n){|i| parent[i] = i}
group = Hash.new(1)

bridges.reverse_each{|a, b|
    pa = parent[a]
    pa = parent[pa] while pa != parent[pa]
    pb = parent[b]
    pb = parent[pb] while pb != parent[pb]
    if pa != pb
        y, x = [pa, pb].minmax
        parent[a] = parent[b] = parent[x] = y
        group[y] += group[x]
        group.delete(x)
    end
    ties = 0
    group.values.each{|v| ties += v * (v - 1) / 2}
    result << max - ties
}
result.pop
puts result.reverse