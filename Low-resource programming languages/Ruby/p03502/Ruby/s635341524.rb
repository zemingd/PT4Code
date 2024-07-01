n = gets
f = n.chars.map(&:to_i).reduce(:+)
(n.to_i % f == 0) ? puts('Yes') : puts('No')