require 'matrix'
n,m,l = gets.split.map(&:to_i)
a=[]
b=[]
n.times {a << gets.split.map(&:to_i)}
m.times {b << gets.split.map(&:to_i)}
ma = Matrix.build(n,m){|r,c| a[r][c]}
mb = Matrix.build(m,l){|r,c| b[r][c]}
(ma*mb).to_a.map{|r| puts r * ' '}

