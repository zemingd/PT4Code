money = 100000
gets.to_i.times do
  money *= 1.05
  money = (money/1000.0).ceil * 1000
end
puts money