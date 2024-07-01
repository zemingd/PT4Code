n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
half_lcm = 1
for i in 0...n do
  half_lcm = half_lcm.lcm(a[i] / 2)
end
puts (m / half_lcm + 1) / 2
