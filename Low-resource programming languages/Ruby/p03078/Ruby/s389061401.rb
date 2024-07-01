*_, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse
c = gets.split.map(&:to_i).sort.reverse
puts a.product(b).map { |x, y| x + y }.sort.reverse[0, k].product(c).map{ |x, y| x + y }.sort.reverse[0, k]