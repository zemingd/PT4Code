A, B, C, D = gets.chomp.split.map(&:to_i)

lcm = C.lcm(D)
lcm = [C, D].min if D == lcm || C == lcm
undivided = lcm - (lcm / C + lcm / D - 1)

# 0...A
q, r = (A - 1).divmod(lcm)
a = q * undivided + (r - (r / C  + r / D))

# 0..B
q, r = B.divmod(lcm)
b = q * undivided + (r - (r / C  + r / D))

puts b - a
