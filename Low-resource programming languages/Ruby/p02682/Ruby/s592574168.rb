require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
a,b,c,k = gets.chomp.split.map(&:to_i)

if k <= a
  puts k
elsif k <= a + b
  puts a
else
  puts a - (k - a - b)
end
