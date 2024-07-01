x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
puts a.product(b).map { |x, y| x + y }.sort.reverse[0, k].product(c).map{ |x, y| x + y }.sort.reverse[0, k]
