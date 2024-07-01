# https://atcoder.jp/contests/abc083/tasks/abc083_a


A, B, C, D = gets.split.map(&:to_i)
L = A + B
R = C + D
puts %w(Right Balanced Left)[(L<=>R) + 1]
