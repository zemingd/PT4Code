n, k = gets.split.map &:to_i
h = gets.split.map &:to_i

cost = Array.new(n, 0)
cost[0] = 0

1.upto(n-1).each{|i|
    c = []
    1.upto(k).each{|j|
        c << (h[i] - h[i-j]).abs + cost[i-j] if i - j >= 0
    }
    cost[i] = c.min
}

puts cost.last
