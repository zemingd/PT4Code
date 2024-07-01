n, m = gets.split.map(&:to_i)
g = Array.new(n){[]}
m.times do
    a, b = gets.split.map(&:to_i)
    a -= 1
    b -= 1
    g[a] << b
    g[b] << a
end
n.times do |i|
    p g[i].size
end