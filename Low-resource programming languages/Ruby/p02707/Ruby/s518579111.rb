require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = Array.new(n, 0)
(n-1).times do |i|
  ans[a[i]-1] += 1
end

ans.each do |e|
  puts e
end