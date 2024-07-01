n = gets.to_i
map = Hash.new(false)
n.times do
  key = gets.chomp
  map[key] = !map[key]
end
puts map.count{ |_, v| v }