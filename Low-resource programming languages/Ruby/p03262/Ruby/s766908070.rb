num_of_cities, start = gets.split.map(&:to_i)
cities = (gets.split.map(&:to_i) << start).sort

max_distance = cities[-1] - cities[0]

(num_of_cities - 1).times do |i|

  distance = cities[i + 1] - cities[i]

  if max_distance > distance then max_distance = distance end

end

puts max_distance
