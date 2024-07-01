money = gets.to_i
cake = gets.to_i
donut = gets.to_i
puts "#{( money - cake ) % donut }"