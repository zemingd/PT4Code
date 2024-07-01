top = gets.split("")

price = 700

top.each do |t|
  price += 100 if t == "o"
end

puts price