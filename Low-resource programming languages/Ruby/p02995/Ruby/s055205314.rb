A,B,C,D = gets.split.map &:to_i

XC = B/C - (A-1)/C
XD = B/D - (A-1)/D
CD = C.lcm(D)
XCD = B/CD - (A-1)/CD

puts B - A + 1 - (XC + XD - XCD)