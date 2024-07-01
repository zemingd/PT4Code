class Restaurant
  attr_accessor :id, :city, :score
end

n = gets.to_i

restaurants = []

n.times do |i|
  city, score = gets.split(' ')
  r = Restaurant.new
  r.id = i+1
  r.score = score.to_i
  r.city = city
  restaurants << r
end
restaurants = restaurants.sort! do |a, b|
  (a.city <=> b.city).nonzero? ||
      (b.score <=> a.score)
end

restaurants.each do |r|
  puts r.id
end
