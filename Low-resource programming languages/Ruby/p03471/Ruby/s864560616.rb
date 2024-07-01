n, y = gets.chomp.split.map(&:to_i)

x, a = y.divmod(10000)
y, b = a.divmod(5000)
z, c = b.divmod(1000)

p = n - (x + y + z)
if p < 0
  puts '-1 -1 -1'
  exit
end
m, u = p.divmod(9)
if m <= x
  x -= m
  z += 10 * m
else
  z += 10 * x
  u += (m-x) * 9
  x = 0
end
k, l = u.divmod(4)
if k <= y
  y -= k
  z += 5 * k
else
  z += 5 * y
  l += (k-y) * 4
  y = 0
end

if l <= x
  x -= l
  y += 2 * l
else
  puts '-1 -1 -1'
  exit
end

puts "#{x} #{y} #{z}"
