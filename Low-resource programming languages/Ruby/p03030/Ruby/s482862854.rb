N = gets.strip.to_i
restaurants = []
nums = {}
N.times do |n|
  s, p = gets.strip.split(' ')
  id = s + (201 - p.to_i).to_s
  restaurants.push id
  nums[id] = n+1
end
restaurants.sort!
restaurants.each do |id|
  puts nums[id]
end
