require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
a,b = gets.chomp.split.map(&:to_i)

if b % a == 0
  puts a + b
else
  puts b - a
end
