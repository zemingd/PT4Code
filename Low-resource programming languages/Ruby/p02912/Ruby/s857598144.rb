N, M = gets.chomp.split().map(&:to_i)
items = gets.chomp.split().map(&:to_i)

M.times do 
  items[items.index(items.max)] = (items.max / 2).floor
end

puts items.inject(&:+)