A, B, C, D = gets.split.map(&:to_i)

E = C.lcm(D)

underB  = B     - B.div(C) - B.div(D) + B.div(E)
underA1 = A - 1 - (A-1).div(C) - (A-1).div(D) + (A-1).div(E)

p underB - underA1