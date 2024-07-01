n = gets.to_i
restaurants = []
n.times do |i|
  city, point = gets.split
  restaurants << [i + 1, city, point.to_i]
end

restaurants.sort{|(i1, c1, p1), (i2, c2, p2)| c1 == c2 ? ((p1 <=> p2) * -1) : (c1 <=> c2)}
           .each{|(i, _, _)| puts i}˜