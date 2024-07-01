require 'matrix'

n, m, l = gets.split.map(&:to_i)
x = []
a = Matrix[*n.times.x) {|_, x| x << gets.split.map(&:to_i) }]
b = Matrix[*m.times.x) {|_, x| x << gets.split.map(&:to_i) }]
puts (a * b).to_a.map {|r| r.join ' ' }.join ?\n

