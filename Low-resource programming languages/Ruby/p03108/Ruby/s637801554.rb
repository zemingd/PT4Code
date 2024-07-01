n, m = gets.chomp.split.map(&:to_i)
max = n * (n - 1) / 2
group = Hash.new(1)
bridges = []
m.times{bridges << gets.chomp.split.map(&:to_i)}
arr = []
parent = []
1.upto(n){|i| parent[i] = i}
result = [max]
bridges.reverse_each{|a, b|
    pa = parent[a]
    pa = parent[pa] while pa != parent[pa]
    pb = parent[b]
    pb = parent[pb] while pb != parent[pb]
    if pa != pb
        y, x = [pa, pb].minmax
        parent[a] = parent[b] = y
        group[y] += group[x]
        group.delete(x)
    end
    ties = 0
    group.values.each{|v| ties += v * (v - 1) / 2}
    result << max - ties
}
result.pop
puts result.reverse