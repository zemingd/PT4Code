n = gets.to_i
ans = n

while ans > 0 do
  break if ans % 2 == 0 && ans % n == 0
  ans *= 2
end

puts ans