N = gets.to_i

restaurant = []

N.times do |n|
  restaurant << gets.split
  restaurant[n][1] = restaurant[n][1].to_i
  restaurant[n] << n+1
end

restaurant.sort_by { | r |
  [r[0], -r[1]] 
}.each { | r | puts r[2] }
