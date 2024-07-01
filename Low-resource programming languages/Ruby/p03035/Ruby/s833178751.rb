a, b = gets.split.map(&:to_i)

price = b
if a <= 5
  price = 0
elsif 6 <= a and a <= 12
  price /= 2
end

puts price