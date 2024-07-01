require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,m = gets.chomp.split.map(&:to_i)

combi = Combi.new(100000)

puts n*(n-1) / 2 + m*(m-1)/2

