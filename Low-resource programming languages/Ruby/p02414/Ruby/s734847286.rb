require 'matrix'

n, m, l = gets.split.map(&:to_i)
a = []
n.times do
  a << gets.split.map(&:to_i)
end
b = []
m.times do
  b << gets.split.map(&:to_i)
end
ma = Matrix[*a]
mb = Matrix[*b]

mc = ma * mb
mc.to_a.each { |r| puts r.join(" ")}