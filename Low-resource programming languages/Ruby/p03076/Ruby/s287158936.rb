orders = []
5.times { orders << gets.chomp.to_i }

def far_from_decimal(x)
  m = x % 10
  (10 - m) % 10
end
orders.sort! { |x, y| far_from_decimal(x) <=> far_from_decimal(y) }

total = orders.reduce(0) do |total, x|
  total + x + far_from_decimal(x)
end

puts(total - far_from_decimal(orders.last))
