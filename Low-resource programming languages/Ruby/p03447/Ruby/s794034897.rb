require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
x = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i

x -= a
puts x % b
