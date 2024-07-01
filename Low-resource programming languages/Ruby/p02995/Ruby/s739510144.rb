line = gets.split(' ').map(&:to_i)

A = line[0] - 1
B = line[1]
C = line[2]
D = line[3]

one_to_a = A - (A/C) - (A/D) + (A/(C.lcm(D)))
one_to_b = B - (B/C) - (B/D) + (B/(C.lcm(D)))

print one_to_b - one_to_a