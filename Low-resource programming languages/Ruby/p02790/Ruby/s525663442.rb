a, b = gets.split.map(&:strip)
an = a * b.to_i
bn = b * a.to_i
puts (an.to_i < bn.to_i ? an : bn)