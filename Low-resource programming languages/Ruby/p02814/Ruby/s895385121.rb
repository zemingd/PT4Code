# 解説AC(できるといいな)
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a0 = a[0]
d = 1
while a0 % 2 == 0 do
  a0 /= 2
  d *= 2
end
if a.any? {|v| v % d != 0 || (v / d) % 2 == 0}
  puts 0
else
  half_lcm = a.inject(1) { |hl, ai| hl.lcm(ai / 2) }
  puts (m / half_lcm + 1) / 2
end
