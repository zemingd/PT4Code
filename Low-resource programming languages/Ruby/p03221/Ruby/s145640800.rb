n, m = STDIN.gets.split(' ').map(&:to_i)

cities = Array.new(m, 0)

m.times do |i|
  p, y = STDIN.gets.split(' ').map(&:to_i)
  cities[i] = [i, p, y]
end

sorted_cities = cities.sort_by do |city|
  city[2]
end

# p cities

map = {}

count = Hash.new(1)

sorted_cities.each do |city|
  map[city[2]] = count[city[1]]
  count[city[1]] += 1
end

cities.each do |city|
  puts "#{sprintf("%06d", city[1])}#{sprintf("%06d", map[city[2]])}"
end
