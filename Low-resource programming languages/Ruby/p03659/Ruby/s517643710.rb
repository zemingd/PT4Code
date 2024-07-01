gets
a = gets.split.map(&:to_i)
res = (1..a.length-1).map { |i|
    x = a.take(i).inject(:+)
    y = a.drop(i).inject(:+)
    (x - y).abs
}
puts res.min