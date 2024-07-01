num = gets.chomp.to_i
i = 0
cost = 100.0
while cost < num do
  cost = (cost*1.01).floor
  i += 1
end
puts i