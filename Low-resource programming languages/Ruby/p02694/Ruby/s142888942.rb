target = gets.to_i

res = 0
amount = 100

while amount < target
  res += 1
  amount *= 1.01
end

puts res