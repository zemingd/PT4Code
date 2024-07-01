require 'set'; require 'prime'
INF=Float::INFINITY
a,b = gets.chomp.split.map(&:to_i)

puts [a.to_s * b, b.to_s * a].min