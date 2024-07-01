require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
a,b = gets.chomp.split.map(&:to_i)

if (a*b).odd?
  puts 'Odd'
else
  puts 'Even'
end