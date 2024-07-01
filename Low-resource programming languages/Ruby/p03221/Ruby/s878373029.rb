n, m = STDIN.gets.split(' ').map(&:to_i)

cities = Array.new(m, 0)

m.times do |i|
  p i
  p, y = STDIN.gets.split(' ').map(&:to_i)
  p "#{p}, #{y}"
  cities[i] = [i, p, y]
end

original_cities = cities.dup
p cities

cities = cities.sort_by do |city|
  p "city: #{city}"
  city[2]
end

p cities

map = {}

count = Hash.new(1)

cities.each do |city|
  map[city[2]] = count[city[1]]
  count[city[1]] += 1
end

original_cities.each do |city|
  puts "#{sprintf("%06d", map[city[2]])}#{sprintf("%06d", map[city[2]])}"
end
