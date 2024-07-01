n = gets.to_i
orders = gets.split.map(&:to_i)
satisfactions = gets.split.map(&:to_i)
additions = gets.split.map(&:to_i)
previous = -1
sum = 0
orders.each do |order|
  sum += satisfactions[order - 1]
  sum += additions[order - 2] if previous + 1 == order
  previous = order
end
puts sum
