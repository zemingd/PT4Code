require 'set'; require 'prime'
INF=Float::INFINITY
h = gets.chomp.to_i

ans = 0
cur = 1
while h > 0
  h /= 2
  ans += cur
  cur *= 2
end

puts ans
