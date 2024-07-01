n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
half_lcm = a.inject(1) { |hl, ai| hl.lcm(ai / 2) }
puts (m / half_lcm + 1) / 2
