( A, B, C, D ) = gets.split(' ').map(&:to_i)
E = C.lcm(D)
result = B.div(C) - (A-1).div(C) + B.div(D) - (A-1).div(D) - (B.div(E) - (A-1).div(E))
puts (B - A + 1) - result
