require 'set'; require 'prime'
INF=Float::INFINITY
n,i = gets.chomp.split.map(&:to_i)
puts n - i + 1