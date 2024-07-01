# https://atcoder.jp/contests/abc131/tasks/abc131_c



A, B, C, D = gets.split.map(&:to_i)

multiple_c = B / C - (A - 1) / C
multiple_d = B / D - (A - 1) / D
multiple_cd = B / C.lcm(D) - (A - 1) / C.lcm(D)

puts B - A + 1 - multiple_c - multiple_d + multiple_cd
