n, m = gets.chomp.split.map(&:to_i)
bridges = []
m.times{bridges << gets.chomp.split.map(&:to_i)}

max = n * (n - 1) / 2
result = [max]
parent = []
1.upto(n){|i| parent[i] = i}
group = Hash.new(1)
number = Hash.new(0)
number[1] = n

bridges.reverse_each{|a, b|
    pa = a
    pa = parent[pa] while pa != parent[pa]
    pb = b
    pb = parent[pb] while pb != parent[pb]
    if pa != pb
        y, x = [pa, pb].minmax

        p = a
        while y != parent[p]
            temp = parent[p]
            parent[p] = y
            p = temp
        end
        p = b
        while y != parent[p]
            temp = parent[p]
            parent[p] = y
            p = temp
        end
        
        number[group[y]] -= 1
        number[group[x]] -= 1
        group[y] += group[x]
        number[group[y]] += 1
        group.delete(x)
    end
    ties = 0
    number.each{|k, v| ties += k * (k - 1) / 2 * v}
    result << max - ties
}
result.pop
puts result.reverse