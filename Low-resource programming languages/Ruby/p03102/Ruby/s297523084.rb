n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times.each{
    a = gets.split.map(&:to_i)
    x = 0
    a.each_with_index{|ai, i|
        x += a[i] * b[i]
    }
    x += c
    if x > 0
        ans += 1
    end
}
puts ans
