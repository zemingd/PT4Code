n, d = gets.split.map(&:to_i)
coordinates = n.times.map { gets.split.map(&:to_i) }

answer = coordinates.combination(2).count do |(y, z)|
  distance = Math.sqrt((0...d).reduce(0) { |s, i| s += (y[i] - z[i]) ** 2 })
  distance - distance.to_i == 0
end
puts answer