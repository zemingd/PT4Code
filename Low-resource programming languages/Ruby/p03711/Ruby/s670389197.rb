x, y = gets.split.map(&:to_i)
g = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]
puts g.any?{|_g|
  _g.include?(x) && _g.include?(y)
} ? :Yes : :No