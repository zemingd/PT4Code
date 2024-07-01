x, y = gets.split.map(&:to_i)
g1 = [1, 3, 5, 7, 8, 10, 12]
g2 = [4, 6, 9, 11]
puts (g1.include?(x) && g1.include?(y) || g2.include?(x) && g2.include?(y)) ? 'Yes' : 'No'