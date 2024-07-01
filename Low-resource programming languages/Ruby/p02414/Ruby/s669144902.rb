require 'matrix'

n, m, l = gets.split.map(&:to_i)
a = Array.new()
b = Array.new()
n.times do |i|
  a << gets.split.map(&:to_i)
end
m.times do
  b << gets.split.map(&:to_i)
end
mc = Matrix.rows( a ) * Matrix.rows( b )
(0...n).each do | i |
  puts mc.row( i ).to_a.join(" ")
end