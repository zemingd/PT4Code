h = gets.chomp.to_i

result = 0
tmp = 1
while h > 0 do
  result += tmp
  tmp *= 2
  h /= 2
end

puts result
