A, B, C, D = gets.chomp.split.map(&:to_i)
c = B / C - (A - 1) / C
d = B / D - (A - 1) / D
cd = B / C.lcm(D) - (A - 1) / C.lcm(D)
puts (A..B).size - (c + d - cd)
