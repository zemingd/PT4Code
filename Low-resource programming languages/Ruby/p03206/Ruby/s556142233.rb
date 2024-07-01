n = gets.to_i
items = []
n.times do
  items << gets.to_i
end
p items.inject(:+) - items.max /2