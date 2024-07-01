n = gets.to_i
a = gets.split.map(&:to_i)
sum = a.inject(:+)
x = 0
y = sum
min = 10 ** 15
(0 ... n - 1).each{|i|
    x += a[i]
    y -= a[i]
    abs = (x - y).abs
    if abs < min
        min = abs
    end
}
puts min
