#!/usr/bin/env ruby
require 'matrix'
n, m, l = gets.chomp.split.map(&:to_i)

a = []
b = []
n.times do
  a << gets.chomp.split.map(&:to_i)
end
m.times do
  b << gets.chomp.split.map(&:to_i)
end
ma = Matrix.build(n,m){|r, c| a[r][c]}
mb = Matrix.build(m,l){|r, c| b[r][c]}
# puts Matrix[b]
(ma * mb).to_a.map{ |r| puts r * ' ' }