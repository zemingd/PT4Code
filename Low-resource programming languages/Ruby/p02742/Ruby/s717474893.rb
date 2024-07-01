nums = gets.split.map(&:to_i)
tiles = nums[0]*nums[1]

if tiles.even?
  puts tiles/2
else
  puts (nums[0]*(nums[1]-1) + (nums[0] + 1)) /2
end