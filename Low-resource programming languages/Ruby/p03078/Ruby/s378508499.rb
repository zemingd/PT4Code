x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
ab = a.product(b).map { |x, y| x + y }.sort.reverse[0, k]
abc = ab.product(c).map{ |x, y| x + y }.sort.reverse[0, k]
puts abc
