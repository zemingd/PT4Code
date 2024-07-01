a, b, c, d = gets.chomp.split.map(&:to_i)
intersect =  (a..b).to_a & (c..d).to_a
puts intersect.count != 0 ? intersect.count - 1 : 0
