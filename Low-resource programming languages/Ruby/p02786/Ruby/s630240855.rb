h = gets.to_i

count = 0
ans = 1
while h >= 2 do
  h /= 2
  count += 1
  ans += 2 ** count
end

puts ans