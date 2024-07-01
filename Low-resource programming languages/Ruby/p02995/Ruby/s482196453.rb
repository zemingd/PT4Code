require 'prime'
a, b, c, d = gets.split.map(&:to_i)

def m(a, b, x)
  s = (a-1)/x + 1
  e = b/x
  e-s+1
end

cs = m(a, b, c)
ds = m(a, b, d)
cds = m(a, b, c.lcm(d))

puts (b - a + 1) - (cs + ds) + cds
