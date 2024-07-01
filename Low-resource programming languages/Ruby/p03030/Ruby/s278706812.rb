n = gets.to_i
shops = []
n.times do |i|
  city, point = gets.split
  point = point.to_i
  shops << {index: i, city: city, point: point}
end
shops.sort! { |a, b|
  (a[:city] <=> b[:city]).nonzero? ||
  b[:point] <=> a[:point]
}
shops.each do |shop|
  puts shop[:index] + 1
end
