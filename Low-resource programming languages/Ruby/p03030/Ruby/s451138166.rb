n = gets.to_i

cities = n.times.map{gets.split}
cities_sorted = cities.sort do |a, b|
  (a[0] <=> b[0]).nonzero? || (b[1].to_i <=> a[1].to_i)
end

cities_sorted.each do |c|
  puts cities.find_index(c)+1
end
