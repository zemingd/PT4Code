require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
a = gets.chomp.split.map(&:to_i)

puts a.index(0) + 1