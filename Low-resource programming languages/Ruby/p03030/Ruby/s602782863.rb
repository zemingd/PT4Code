n = gets.to_i
restaurants = []
n.times do |index|
  restaurants.push(gets.split(" ").map(&:to_s))
  restaurants[index][1] = restaurants[index][1].to_i
end
sorted_restaurants = restaurants.sort {|a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])}
# puts sorted_restaurants
sorted_restaurants.each_with_index do |sorted, index|
  restaurants.each_with_index do |restaurant, index2|
    if sorted == restaurant
      puts index2 + 1
      break
    end
  end
end