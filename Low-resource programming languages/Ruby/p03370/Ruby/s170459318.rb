n,x = gets.split.map &:to_i
a = []
hoge = 0
n.times do |i|
    a[i] = gets.to_i
    hoge += a[i]
end

puts n + (x - hoge)/a.min