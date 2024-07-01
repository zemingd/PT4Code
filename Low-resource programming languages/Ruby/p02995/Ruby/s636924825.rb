A, B, C, D = gets.split(' ').map(&:to_i)
lcm = C.lcm(D)
dC = ((B / C) - (A / C))
dC += 1 if A % C == 0
dD = ((B / D) - (A / D))
dD += 1 if A % D == 0
dCD = ((B / lcm) - (A / lcm))
dCD += 1 if A % lcm == 0
p (B - A + 1) - (dC + dD - dCD)