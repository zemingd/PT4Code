A, B, C, D = gets.chomp.split(' ').map(&:to_i)
all = B-A+1
c = (B/C) - (A-1)/C
d = (B/D) - (A-1)/D
cd = B/(C.lcm(D)) - (A-1)/(C.lcm(D))
puts all - c - d + cd