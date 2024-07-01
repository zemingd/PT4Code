require 'matrix'
n, m, l = gets.chomp.split(' ').map(&:to_i)
a = []
n.times do
  a << gets.chomp.split(' ').map(&:to_i)
end
b = []
m.times do
  b <<  gets.chomp.split(' ').map(&:to_i)
end
c = Matrix.rows(a) * Matrix.rows(b)
c.to_a.each do |row|
  print row.join(' '), "\n"
end