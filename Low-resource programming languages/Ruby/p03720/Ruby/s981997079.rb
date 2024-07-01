require 'pp'

n, m = gets.strip.split.map(&:to_i)
map = {}
m.times do
    a, b = gets.strip.split.map(&:to_i)
    map[a] = {} unless map.key?(a)
    map[b] = {} unless map.key?(b)
    if map[a].key?(b)
        map[a][b] += 1
    else
        map[a][b] = 1
    end
    if map[b].key?(a)
        map[b][a] += 1
    else
        map[b][a] = 1
    end
end

n.times do |i|
    puts map[i + 1].values.inject(:+)
end