ramen = 700
 
topping = gets.chomp.split("")
ramen += 100 if topping[0] == "o"
ramen += 100 if topping[1] == "o"
ramen += 100 if topping[2] == "o"
puts ramen