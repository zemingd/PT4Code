n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
half_lcm = a.inject(1) { |hl, ai| hl.lcm(ai / 2) }
if half_lcm % 2 == 0
  puts 0
else
  puts (m / half_lcm + 1) / 2
end
