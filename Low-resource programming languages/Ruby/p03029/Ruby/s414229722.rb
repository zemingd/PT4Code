require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
a,b = gets.chomp.split.map(&:to_i)

b += a * 3
puts b /2

