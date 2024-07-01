def f(n)
  return   if n < 0
  return n if n < 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

n, m = gets.split.map &:to_i

x = 1
b = 0

m.times do
  e = gets.to_i
  x *= f(e-b)
  b = e+1
end
x *= f(n-b+1)
p x % 1_000_000_007