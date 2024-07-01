require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i

if n % n.to_s.split(//).map(&:to_i).inject(:+) == 0
  puts 'Yes'
else
  puts 'No'
end