nums = gets().split("\s").map{|n| n.to_i}

puts (nums[0] + nums[1] + nums[2]) >= 22 ? 'bust' : 'win'
