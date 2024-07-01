n, coupons = gets.chomp.split.map(&:to_i)
items = gets.chomp.split.map(&:to_i).sort
sum = 0
coupons.times do
  items[n-1] = items[n-1] / 2
  items.sort!
end

items.each do |item|
  sum += item
end
puts sum