require 'set'; require 'prime'
INF=Float::INFINITY
h,a = gets.chomp.split.map(&:to_i)

puts (1.0*h/a).ceil
