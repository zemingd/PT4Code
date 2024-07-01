nums = gets.split(" ").map(&:to_i).sort
k = gets.to_i

puts nums[0] + nums[1] + nums[-1]*(2**k)