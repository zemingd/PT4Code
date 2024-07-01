require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp
t = gets.chomp

t = t.slice(0, t.size-1)
if s == t
  puts 'Yes'
else
  puts 'No'
end