money = 100000
gets.to_i.times do
    interest = money * 0.05
    interest = interest % 1000 == 0 ? interest : interest - interest % 1000 + 1000
    money += interest
end
puts money.to_i