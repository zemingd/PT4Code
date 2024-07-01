n, x = gets.split.map(&:to_i)
m = n.times.map{ gets.to_i }

hoge = (x - m.inject(:+)) / m.sort[0]
puts hoge + m.length