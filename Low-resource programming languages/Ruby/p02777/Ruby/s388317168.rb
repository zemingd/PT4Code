require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
s,t = gets.chomp.split
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

if s == u
  puts [a-1,b].join(' ')
elsif t == u
  puts [a,b-1].join(' ')
end