_n, k = gets.split("\s").map(&:to_i)
h = gets.split("\s").map(&:to_i).sort[0..-k-1]

p h.inject(&:+) || 0