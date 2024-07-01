str = gets.chomp.chars
price = 700

if str[0] == "o"
  price += 100
end

if str[1] == "o"
  price += 100
end

if str[2] == "o"
  price += 100
end

puts price