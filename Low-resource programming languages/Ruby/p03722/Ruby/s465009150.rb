require 'pp'

n, m = gets.strip.split.map(&:to_i)

data = []

m.times do
    a, b, c = gets.strip.split.map(&:to_i)
    data << {from: a, to: b, cost: -c}
end

def find_negative_loop(n, m, data)
    d = {}
    n.times { |i| d[i + 1] = 0 }
    n.times do |i|
        m.times do |j|
            e = data[j]
            from = e[:from]
            to   = e[:to]
            cost = e[:cost]
            if d[to] > d[from] + cost
                d[to] = d[from] + cost
                if i == n - 1
                    return true
                end
            end
        end
    end
    return false
end

INF = 1000000000000000000
def shortest_path(n, m, s, data)
    d = {}
    n.times { |i| d[i + 1] = INF }
    d[s] = 0
    while true do
        update = false
        m.times do |i|
            e = data[i]
            from = e[:from]
            to   = e[:to]
            cost = e[:cost]
            if d[from] != INF && d[to] > d[from] + cost
                d[to] = d[from] + cost
                update = true
            end
        end
        break unless update
    end
    return d
end

d = find_negative_loop(n, m, data)

if d === true
    puts 'inf'
else
    d = shortest_path(n, m, 1, data)
    puts -d[n]
end