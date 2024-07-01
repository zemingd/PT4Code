nums = gets.split.map(&:to_i) 
points = Array.new(nums[0], nums[1] - nums[2])
answerers = nums[2].times.map { gets.to_i }

answerers.each do |a|
  points[a - 1] += 1 
end
points.each do |p|
  puts p > 0 ? 'Yes' : 'No'
end