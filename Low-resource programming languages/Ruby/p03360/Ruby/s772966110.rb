A,B,C = gets.split.map(&:to_i)
K = gets.to_i

mabc = [A,B,C].max
puts (mabc * (2 ** K)) + [A,B,C].inject(:+) - mabc