require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,m = gets.chomp.split.map(&:to_i)

puts n*(n-1) / 2 + m*(m-1)/2
