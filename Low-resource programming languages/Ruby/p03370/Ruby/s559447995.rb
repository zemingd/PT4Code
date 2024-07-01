n,x = gets.chomp.split(" ").map(&:to_i)
m = Array.new(n)
n.times do |i|
    m[i] = gets.chomp.to_i
end
# とりあえず全種類作る。
x = x - m.inject(:+)
cnt = m.length
# 一番粉が少ないお菓子で可能な限り作る
min_m = m.min
puts cnt + x / min_m