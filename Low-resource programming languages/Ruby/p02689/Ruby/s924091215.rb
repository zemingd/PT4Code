n, m = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)

is_good = [true] * n
m.times{|i|
    a, b = gets.split.map{|it| it.to_i - 1}
    if ! (heights[a] < heights[b])
        is_good[b] = false
    end
    if ! (heights[b] < heights[a])
        is_good[a] = false
    end
}
puts is_good.count{|it| it}
