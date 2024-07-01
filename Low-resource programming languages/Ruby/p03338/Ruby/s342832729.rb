n = gets.to_i
s = gets.chomp

max = 0
x = []
for i in 0...n do
    y = []
    x.push(s[i])
    for j in i+1...n do
        y.push(s[j])
    end
    xy = x & y
    if xy.count > max
        max = xy.count
    end
end

puts max
