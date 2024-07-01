s = gets.chomp

price = 700

s.chars.each do |str|
  price += 100 if str == 'o'
end

puts price
