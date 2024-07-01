s = gets.chomp.split("")

price = 700
s.each do |i|
  price += 100 if i == "o"
end
printf("%d\n",price)