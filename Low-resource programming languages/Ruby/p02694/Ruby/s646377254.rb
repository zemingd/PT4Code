require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
x = gets.chomp.to_i

current = 100
ans = 0
while current < x
  current = (current * 1.01).to_i
  ans += 1
end

puts ans
