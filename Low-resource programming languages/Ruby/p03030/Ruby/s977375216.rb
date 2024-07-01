n = gets.chomp.to_i
resutaurants = []
n.times do |time|
  resutaurants << gets.chomp.split(' ')
  resutaurants[time][1] = resutaurants[time][1].to_i
  resutaurants[time] << time+1
end
resutaurants.sort! { |a, b| a[0] == b[0] ? b[1] <=> a[1] : a[0] <=> b[0] }
resutaurants.each { |resutaurant| puts resutaurant[2] }
