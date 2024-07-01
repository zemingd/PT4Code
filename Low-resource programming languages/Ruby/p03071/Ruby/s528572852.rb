a, b = gets.split(' ').map{|n|n.to_i}

coins = 0
2.times do
  if a > b
    coins += a
    a -= 1
  else
    coins += b
    b -= 1
  end
end
p coins