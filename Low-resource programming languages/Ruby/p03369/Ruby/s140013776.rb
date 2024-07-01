s = gets.to_s
price = 700

s.chars do |w|
  price += 100 if w == "o"
end

puts price