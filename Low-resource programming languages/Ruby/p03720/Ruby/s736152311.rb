N, M = gets.split.map{|i|i.to_i}
c = Array.new(N){0}
M.times{
    a, b = gets.split.map{|i|i.to_i - 1}
    c[a] += 1
    c[b] += 1
}
puts c
