require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
k = gets.chomp.to_i

if k.odd?
  puts ((k+1)/2) * (k/2)
else
  puts (k/2) ** 2
end
