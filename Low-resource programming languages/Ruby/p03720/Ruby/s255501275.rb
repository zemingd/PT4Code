n, m = gets.split.map{|n| n.to_i}

cities = Array.new(n+1, 0)
m.times do
  a, b = gets.split.map{|n| n.to_i}
  cities[a] += 1
  cities[b] += 1
end

cities.shift
puts cities
