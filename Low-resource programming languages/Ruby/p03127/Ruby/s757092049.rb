require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = a.first
a.each do |e|
  ans = ans.gcd(e)
end
puts ans
