a, b, c, d = gets.chomp.split.map(&:to_i)

c_num = (b / c) - (a / c)
c_num += 1 if a % c == 0
d_num = (b / d) - (a / d)
d_num += 1 if a % d == 0

# 最小公倍数
e = [c, d].max
f = [c, d].min

while true do
  # q = e / f
  if e % f == 0
    break
  else
    r = e % f
  end

  e = f
  f = r
end

g = c / r * d

g_num = (b / g) - (a/ g)
g_num += 1 if a % g == 0
puts b - a + 1 - (c_num + d_num - g_num)