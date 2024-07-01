_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
m.times { a[a.index(a.max)] /= 2 }
p a.inject(:+)