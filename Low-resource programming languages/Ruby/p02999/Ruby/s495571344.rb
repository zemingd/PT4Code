require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
x,a = gets.chomp.split.map(&:to_i)

if x < a
  puts 0
else
  puts 10
end