# 入力は全て整数
# 0 ≤ L < R ≤ 2 × 10 ** 9
L, R = gets.chomp.split(' ').map(&:to_i)

a, b = L.upto(R).map { |n| [n, n % 2019] }.min(2) { |(_, mod_a),(_, mod_b)| mod_a <=> mod_b }.map(&:first)
puts (a*b)%2019