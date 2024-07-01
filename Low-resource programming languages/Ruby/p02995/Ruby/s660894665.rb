LCM = C.lcm(D)
canDiv = (B/C - (A-1)/C) + (B/D - (A-1)/D) - (B/LCM - (A-1)/LCM)
puts (B-A+1) - canDiv
