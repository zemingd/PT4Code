A, B, C, D = gets.chomp.split.map(&:to_i)
c, d, l = [C, D, C.lcm(D)].map {|x| B / x - A.pred / x}
puts B - A.pred - c - d + l
