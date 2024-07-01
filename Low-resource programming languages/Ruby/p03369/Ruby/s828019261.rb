s = gets.to_s
price = 700

price += 100 if s[0] == "o"
price += 100 if s[1] == "o"
price += 100 if s[2] == "o"

puts price
