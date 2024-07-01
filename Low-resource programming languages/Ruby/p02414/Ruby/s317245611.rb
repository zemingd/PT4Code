require 'matrix'
n, m, l = gets.split.map(&:to_i)
lines = $<.map{|s|s.split.map(&:to_i)}
a = Matrix[*lines.shift(n)]
b = Matrix[*lines]
(a*b).each_slice(l){|a|puts a*" "}