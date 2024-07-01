n,x = gets.split.map &:to_i
a = []
y = 0
n.times do |i|
    a[i] = gets.to_i
    y += a[i]
end
 
puts n + (x - y)/a.min