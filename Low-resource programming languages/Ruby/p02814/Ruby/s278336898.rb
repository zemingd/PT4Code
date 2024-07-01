N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

require "prime"

mul = 1
# 素因数の2のべき乗項は全てのaで共通である必要がある
t2 = 2 ** (A.first.prime_division.to_h[2] || 0)
A.each do |a|
  d, m = a.divmod(t2)
  if !m.zero? || d.zero? || d % 2 == 0 || a % 2 == 1
    puts 0
    exit
  end
  mul *= d
end
mul *= t2 / 2

m = M / mul
if m % 2 == 0
  puts m / 2
else
  puts m / 2 + 1
end
