wallet = gets.chomp.to_i
cake_price = gets.chomp.to_i
donut_price = gets.chomp.to_i
puts (wallet - cake_price) % donut_price