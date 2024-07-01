require 'set'; require 'prime'
INF=Float::INFINITY
n,k = gets.chomp.split.map(&:to_i)

if n > 1
  puts k * (k-1)**(n-1)
else
  puts k
end

