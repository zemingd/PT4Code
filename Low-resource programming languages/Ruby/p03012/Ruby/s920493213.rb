n = gets.to_i
w = gets.split.map(&:to_i)
ans = 100000000
a = 0
b = w.inject(:+)
n.times do |i|
    a += w[i]
    b -= w[i]
    ans = [ans,(a-b).abs].min
end
puts ans