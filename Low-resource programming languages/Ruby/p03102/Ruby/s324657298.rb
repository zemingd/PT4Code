n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do
    a = gets.split.map(&:to_i)
    r = c
    m.times do |i|
        r += a[i]*b[i]
    end
    ans += 1 if r > 0
end
puts ans