n, m = gets.chomp.split.map(&:to_i)
bridges = []
m.times{bridges << gets.chomp.split.map(&:to_i)}

ties = 0
max = n * (n - 1) / 2
result = [max]
parent = []
1.upto(n){|i| parent[i] = i}
group = Hash.new(1)

bridges.reverse_each{|a, b|
    pa = a
    pa = parent[pa] while pa != parent[pa]
    pb = b
    pb = parent[pb] while pb != parent[pb]
    if pa != pb
        y, x = [pa, pb].minmax
        parent[a] = parent[b] = parent[x] = y
        ties += group[x] * group[y]
        group[y] += group[x]
        group.delete(x)
    end
    result << max - ties
}
result.pop
puts result.reverse