require 'prime'
n = gets.to_i
ans = 0
n -= 1 if n.even?
while n >= 1 do
  ans += 1 if 2 ** Prime.prime_division(n).size == 8
  n -= 2
end
puts ans
