ramen = 700

topping = gets.chomp.split("")
ramen += 100 if topping[0] == "x"
ramen += 100 if topping[1] == "x"
ramen += 100 if topping[2] == "x"
puts ramen