input = gets.chomp
price = input.split(" ")[0].to_i

hated_numbers = gets.chomp.split(" ")

def isPermited?(price, hated_numbers)
  isPermited = true

  hated_numbers.each { |v| isPermited = false if price.to_s.include?(v) }

  isPermited
end

while !isPermited?(price, hated_numbers)
  price = price + 1
end

puts price
