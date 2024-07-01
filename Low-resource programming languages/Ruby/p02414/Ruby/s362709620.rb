#http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ITP1_7_D
require 'matrix'

n,m,l = gets.split.map(&:to_i)

a = []
b = []

n.times do
    a.push gets.split.map(&:to_i)
end

m.times do
    b.push gets.split.map(&:to_i)
end

A = Matrix.rows(a)
B = Matrix.rows(b)

c = A * B
c.to_a.each do |row|
    puts row.join(" ")
end