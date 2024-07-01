nums = gets.split(' ').map(&:to_i)
points = Array.new(nums[0], nums[1])
answerers = nums[2].times.map { gets.to_i }

answerers.each do |a|
  points.map!.with_index { |p, i| i != a - 1 ? p - 1 : p }
end
points.each do |p|
  puts p > 0 ? 'Yes' : 'No'
end