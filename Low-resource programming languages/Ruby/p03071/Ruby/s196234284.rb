a, b = gets.split.map(&:to_i)

coin = 0
2.times do |n|
  if a > b
    coin += a
    a -= 1
  else
    coin += b
    b -= 1
  end
end

puts coin
