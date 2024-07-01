P = gets.chomp!
price = 700

if P[0] == 'o'
  price = price + 100
end

if P[1] == 'o'
  price = price + 100
end

if P[2] == 'o'
  price = price + 100
end

puts price