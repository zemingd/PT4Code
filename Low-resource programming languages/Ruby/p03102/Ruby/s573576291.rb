n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
ans = 0
sum = 0
n.times do |i|
    a =  gets.chomp.split.map(&:to_i)
    sum = 0
    m.times do |j|
        sum += a[j] * b[j]
    end
    sum += c
    if sum > 0
        ans += 1
    end
end
puts ans