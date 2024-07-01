A, B, C, D = gets.split.map(&:to_i)

L = A + B
R = C + D

puts %w(Balanced Left Right)[L<=>R]
