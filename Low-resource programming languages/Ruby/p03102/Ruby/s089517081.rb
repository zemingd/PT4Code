n, m, c = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
ans = 0
n.times do
    a = gets.chomp.split(" ").map(&:to_i)
    res = 0
    m.times do |i|
        res += a[i] * b[i]
    end
    ans += 1 if res+c > 0
end
puts ans