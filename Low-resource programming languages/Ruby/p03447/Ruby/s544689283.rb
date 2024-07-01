money = gets.to_i
cake_price = gets.to_i
donut_price = gets.to_i

money -= cake_price
money = money % donut_price

puts money