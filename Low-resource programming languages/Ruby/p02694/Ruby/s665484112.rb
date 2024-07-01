x = readline.to_i

r = 1
money = 100
loop do
  break if money >= x

  r += 1
  money = (money * 1.01).floor
end

puts r - 1
