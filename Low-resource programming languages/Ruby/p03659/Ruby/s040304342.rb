gets
a = gets.split.map(&:to_i)
x = 0
y = a.inject(:+)
res = (1..a.length-1).map { |i|
    x += a[i - 1]
    y -= a[i - 1]
    (x - y).abs
}
puts res.min